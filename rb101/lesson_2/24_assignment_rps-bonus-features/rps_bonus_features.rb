require 'yaml'
require 'pry'

GAME_TEXT = YAML.load_file('rps_bonus_features_messages.yml')
GAME_MOVES = YAML.load_file('rps_bonus_features_moves.yml')
MOVES = GAME_MOVES['it_beats_these'].keys
SHORTHANDS = GAME_MOVES['shorthands'].keys
ROUNDS_TO_WIN = 3

def clear_screen
  system('clear')
end

def prompt(message)
  puts "=> #{message}"
end

def prompt_game_text(game_text_key)
  prompt(GAME_TEXT[game_text_key])
end

def prompt_format_text(game_text_key, *argument)
  prompt(format(GAME_TEXT[game_text_key], *argument))
end

def valid_move?(move)
  MOVES.include?(move) || SHORTHANDS.include?(move)
end

def generate_move_random
  MOVES.sample
end

def shorthand?(move)
  SHORTHANDS.include?(move)
end

def short_to_full(shorthand)
  GAME_MOVES['shorthands'][shorthand]
end

def get_full_move_if_short(player_move)
  if shorthand?(player_move)
    short_to_full(player_move)
  else
    player_move
  end
end

def win?(move1, move2)
  GAME_MOVES['it_beats_these'][move1].include?(move2)
end

def round_start(round_number, win_counter_player, win_counter_computer)
  prompt_format_text('display_round_number', round_number)
  prompt_format_text('display_scores', win_counter_player, win_counter_computer)
  sleep(1.5)
  prompt_game_text('available_shorthands')
  sleep(1.5)
  prompt_game_text('ask_player_move')
end

def invalid_move
  prompt_game_text('invalid_move')
  sleep(1.5)
  prompt_game_text('ask_for_rules')
  display_rules = gets.chomp.downcase
  if display_rules.start_with?('y')
    prompt_game_text('rules_game')
    prompt_game_text('continue')
    gets.chomp.downcase
  end
end

def display_round_result(player_move, computer_move)
  if win?(player_move, computer_move)
    prompt_game_text('round_winner_player')
  elsif win?(computer_move, player_move)
    prompt_game_text('round_winner_computer')
  else
    prompt_game_text('round_tie')
  end
end

def round_transition(win_counter_player, win_counter_computer)
  if win_counter_player != ROUNDS_TO_WIN && win_counter_computer != ROUNDS_TO_WIN
    prompt_game_text('starting_next_round')
    sleep(2)
  else
    prompt_game_text('we_have_a_winner')
    sleep(2.5)
  end
  clear_screen
end

def round_end(player_move, computer_move)
  prompt_format_text('display_moves', player_move, computer_move)
  sleep(1)
  display_round_result(player_move, computer_move)
  sleep(1)
end

def grand_winner?(win_counter1, win_counter2)
  win_counter1 == ROUNDS_TO_WIN || win_counter2 == ROUNDS_TO_WIN
end

def display_grand_winner(win_counter_player)
  if win_counter_player == ROUNDS_TO_WIN
    prompt_game_text('grand_winner_player')
  else
    prompt_game_text('grand_winner_computer')
  end
end

prompt_game_text('welcome')
sleep(2)

prompt_game_text('rules_game')
prompt_game_text('continue')
gets.chomp

prompt_game_text('rules_grand_winner')
sleep(2)

prompt_game_text('here_we_go')
sleep(2)
clear_screen

loop do # main loop
  win_counter_player = 0
  win_counter_computer = 0
  round_number = 1
  player_move = nil

  loop do
    loop do
      round_start(round_number, win_counter_player, win_counter_computer)
      player_move = gets.chomp.downcase
      break if valid_move?(player_move)

      invalid_move
      clear_screen
      next
    end

    player_move = get_full_move_if_short(player_move)
    computer_move = generate_move_random

    round_end(player_move, computer_move)

    if win?(player_move, computer_move)
      win_counter_player += 1
    elsif win?(computer_move, player_move)
      win_counter_computer += 1
    end

    round_number += 1

    round_transition(win_counter_player, win_counter_computer)

    break if grand_winner?(win_counter_player, win_counter_computer)
  end

  display_grand_winner(win_counter_player)
  sleep(3)

  prompt_game_text('play_again')
  play_again = gets.chomp.downcase
  break unless play_again.start_with?('y')

  clear_screen
end

prompt_game_text('thank_you')
