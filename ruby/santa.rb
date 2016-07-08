class Santa
	
	def initialize(gender,ethnicity,accent,nationality)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@accent = accent
		@nationality = nationality
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
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
	
	def ethnicity
		@ethnicity
	end

end

nick = Santa.new("male","caucasian")

nick.speak

nick.eat_milk_and_cookies("sugar cookie")

workshop = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
accents = ["southern", "brooklyn", "osaka", "chinese", "english", "other"]
nationalities = ["american", "canadian", "chinese", "german", "indian", "australian", "other"]

example_genders.length.times do |fc|
  workshop << Santa.new(example_genders[fc], example_ethnicities[fc], accents[fc], nationalities[fc])
end

p workshop