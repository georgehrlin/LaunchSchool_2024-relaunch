require 'yaml'

GAME_OPTIONS = YAML.load_file('rps_bonus_features_options.yml')
OPTIONS = GAME_OPTIONS['it_beats_these'].keys

def win?(move1, move2)
  GAME_OPTIONS['it_beats_these'][move1].include?(move2)
end

p win?('scissors', 'lizard')
p win?('spock', 'rock')
p win?('lizard', 'spock')
