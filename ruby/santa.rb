class Santa
	attr_reader :ethnicity
	attr_accessor :gender
	
	def initialize(gender,ethnicity,accent,nationality)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@accent = accent
		@nationality = nationality
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(0..140)
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	
	def age
		@age
	end
	
	def reindeer_ranking
		@reindeer_ranking
	end
	
	def celebrate_birthday
		@age += 1
	end
	
	def get_mad_at
		@reindeer_ranking.rotate(4)
	end

end

# This is the driver code for this assignment.

nick = Santa.new("male","caucasian","english","other")

nick.speak

nick.eat_milk_and_cookies("sugar cookie")

puts "This Santa is #{nick.celebrate_birthday} years old."

puts "This Santa is of #{nick.ethnicity} ethnicity."

puts "This Santa's ranking of his reindeer, from favorite to least favorite, is as follows. #{nick.get_mad_at}."

nick.gender = "female"

puts "This Santa's gender is #{nick.gender}."

# Adding code for more diverse Santas and storing instances in an array.

workshop = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
accents = ["southern", "brooklyn", "osaka", "chinese", "english", "other"]
nationalities = ["american", "canadian", "chinese", "german", "indian", "australian", "other"]

example_genders.length.times do |fc|
  workshop << Santa.new(example_genders[fc], example_ethnicities[fc], accents[fc], nationalities[fc])
end

p workshop

# This is a loop for Release 4.

25.times do |fc|
  workshop << Santa.new(example_genders[fc], example_ethnicities[fc], accents[fc], nationalities[fc])
end