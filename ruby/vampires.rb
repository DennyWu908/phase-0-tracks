puts "How many employees will be processed with this quiz?"

number = gets.chomp.to_i

number.times do |result|

	puts "What is your name?"

	name = gets.chomp

	puts "How old are you (please give a numerical answer)?"

	age = gets.chomp.to_i

	puts "What year were you born in (give a numerical answer here, too)?"

	birthyear = gets.chomp.to_i

	loop do
		puts "What are your allergies? Type 'done' to finish."
		allergy = gets.chomp

		case allergy
		when 'done'
			break
		when 'sunshine'
			result = "Definitely a vampire."
			break
		end
	end

	puts "Our cafeteria serves garlic bread on Tuesday. Should we order you some? (y/n)"

	garlic = gets.chomp

	puts "Would you like to enroll in our company's health insurance? (y/n)"

	insurance = gets.chomp

	if garlic == "y"
		likes_garlic = true
	end

	if insurance == "y"
		wants_insurance = true
	end

	if 2016 == birthyear + age
		mortal_age = true
	end

	result = "Results inconclusive."

	if mortal_age && (likes_garlic || wants_insurance)
		result = "Probably not a vampire."
	end

	if !mortal_age && (!likes_garlic || !wants_insurance)
		result = "Probably a vampire."
	end

	if !mortal_age && !likes_garlic && !wants_insurance
		result = "Almost certainly a vampire."
	end

	vampire_names = ['Drake Cula', 'Tu Fang', 'Sebastian LeCroix', 'Nines Rodriguez']
	if vampire_names.include?(name)
		result = "Definitely a vampire."
	end

	puts result

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

end