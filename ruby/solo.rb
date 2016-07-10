# This class will be a dragon, but not the standard fairy tale monster.

# I'll probably base this class on myths and video games, and its attributes will reflect these inspirations.

# The attributes of this dragon will include variable breath type, scale color, and lair location.

# The methods will be a little more "traditional". Flying, swinging its tail, and (for a little more variety) casting a magic spell.

class Dragon
	
	attr_reader :age
	attr_accessor :breath, :color, :location, :number
	
	def initialize(number)
		puts "A huge shadow appears in the sky..."
		@number = number
		@breath = breath
		@color = color
		@location = location
		@age = rand(100..1000)
	end

	def dragon_flying
		puts "European ones have wings, but the dragons from Asian myths float through the air."
	end

	def tail_swing
		puts "This would probably be like a thunderbolt no matter what kind of dragon you were dealing with."
	end

	def magic_spell(effect)
		puts "Some dragons can even do magic. Look! That one is casting a spell to #{effect}!"
	end
	
end

dragon_guide = []

loop do

	puts "We need to document as many dragons as we can before the migration ends. Make up an ID number (in string form) for each one, then enter its color, breath type, and lair location. When you're done, type 'done'."

	number = gets.chomp
	
	dragon_guide << number

	dragon = Dragon.new(number)

	puts "What is this the color of this dragon's scales?"

	dragon.color = gets.chomp
	
	dragon_guide << dragon.color

	puts "What type of energy does it breathe?"

	dragon.breath = gets.chomp
	
	dragon_guide << dragon.breath

	puts "In what type of location has it chosen to rest?"

	dragon.location = gets.chomp
	
	dragon_guide << dragon.location

	puts "That dragon won't like us asking its age. We'll use this program to estimate it. Just a minute... The age of this dragon is #{dragon.age}."
	
	dragon_guide << dragon.age

	break if number = 'done'

end

p dragon_guide