# Formal Pseudocode for RPS Bonus Features
START

PRINT msg_welcome

PRINT msg_rules

PRINT msg_available_options

PRINT msg_option_shorthands

LOOP # main loop
  win_counter_player = 0
  win_counter_computer = 0

  LOOP
    LOOP
      GET player_option
      BREAK IF valid_option?(player_option)
    END LOOP

    PRINT msg_player_computer_options
    display_round_winner
    increment_win_counter(player_option, computer_option)
    BREAK IF (win_counter_player == 3 OR win_counter_computer == 3)
  END LOOP
  
  display_grand_winner
  PRINT msg_play_again?
  GET play_again?
  BREAK UNLESS play_again?.start_with('y')
END LOOP

PRINT_msg_thank_you
