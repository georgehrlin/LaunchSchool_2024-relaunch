# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
p input = gets.chomp.downcase.to_sym

# If we are adding the additional stat points to the basic stats:
player.merge!(character_classes[input]) do |k, basic, new|
  basic + new
end

# player.merge!(character_classes[input])

puts 'Your character stats:'
puts player
