def confirmation
	arg1 = "primary"
	arg2 = "secondary"
	arg3 = "tertiary"
	puts "Yes, this is a method."
	4.times { yield(arg1, arg2) }
end

confirmation { |arg1, arg2, arg3| puts "This, on the other hand, is a block. The arguments from the method are #{arg1}, #{arg2}, and #{arg3}. This string will print 4 times." }

noble_gases = ["helium", "xenon", "argon", "neon"]

puts "The following are the items in the 'noble_gases' array."

noble_gases.each do |gas|
	puts gas
end

puts "Once again, here is the original array."

p noble_gases

puts "Now, lets capitalize the names of these elements."

noble_gases.map! do |gas|
	gas.capitalize
end

p noble_gases

states_of_matter = {"solid" => 'ice', "liquid" => 'water', "gas" => 'vapor' }

puts "Keep in mind that the following are the keys and values of the 'states_of_matter' hash."

p states_of_matter

puts "Now, let's print out sentences using these keys and values."

states_of_matter.each do |state, term|
	puts "The #{state} form of water is #{term}."
end

puts "Once again, here are the keys and values of the 'states_of_matter' array."

p states_of_matter

whole_numbers = [23, 5, 8, 3, 12]

p whole_numbers

whole_numbers.delete_if do |num|
	num < 7
end

p whole_numbers

need_large_numbers = [100, 529, 8, 945, 371]

p need_large_numbers

need_large_numbers.keep_if do |int|
	int >= 100
end

p need_large_numbers

need_small_numbers = [1000, 10, 8, 5, 1]

p need_small_numbers

need_small_numbers.reject! do |nm|
	nm > 100
end

p need_small_numbers

number_names = {3 => 'triangle', 4 => 'square', 5 => 'pentagon', 6 => 'hexagon'}

p number_names

number_names.delete_if do |num, shape|
	num < 5
end

p number_names