puts "Welcome to the Hamster Registration program. Please enter the name of the hamster you wish the register."

hamster_name = gets.chomp

puts "On a scale of 1 to 10, how much noise does #{hamster_name} normally make?"

hamster_volume = gets.chomp.to_i

puts "What color is #{hamster_name}?"

hamster_color = gets.chomp

puts "In your opinion, is #{hamster_name} a good candidate for adoption? Please answer yes or no."

hamster_opinion = gets.chomp

if hamster_opinion == " "
	hamster_opinion = nil
end

puts "In summary, the name of your hamster is #{hamster_name}. On a scale of 1 to 10, the amount of noise it makes is #{hamster_volume}.
Its color is #{hamster_color}. And when asked if #{hamster_name} is a good candidate for adoption, you answered #{hamster_opinion}."