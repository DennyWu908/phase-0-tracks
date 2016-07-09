# This class will be a dragon, but not the  standard fairy tale monster.

# I'll probably base this class on myths and video games, and its attributes will reflect these inspirations.

# The attributes of this dragon will include variable breath type, scale color, and lair location.

# The methods will be a little more "normal". Flying, swinging its tail, and (for a little more variety) casting a magic spell.

class Dragon
	
	attr_reader
	attr_accessor
	
	def initialize(breath,color,location,age)
		puts "A huge shadow appears in the sky..."
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

	def breath
		@breath
	end
	
	def color
		@color
	end
	
	def location
		@location
	end
	
	def age
		@age
	end
	
end