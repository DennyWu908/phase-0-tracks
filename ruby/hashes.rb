# Prompt the user for answers to the following questions. Add each answer to the hash, assigning the answers as values to keys.

# What is the name of the client?

puts "Welcome to the client tracking program. Please enter the name of a client to begin."
client_name = gets.chomp

client_information = {}
client_information[:name] = client_name

# What is the age of the client?

puts "What is the (numerical) age of this client, in years?"
client_age = gets.chomp.to_i

client_information[:age] = client_age

# Does the client have any children or pets?

puts "Does this client have any children or pets? (y/n)"
children_present = gets.chomp

	if children_present == "y"
		children_present = true
	else
		children_present = false
	end

client_information[:has_children] = children_present

# If the answer to the above is "yes", how many?

	if client_information[:has_children] = true
		puts "How many children or pets does this client have?"
		number_children = gets.chomp.to_i
		client_information[:number_of_children] = number_children
	else
		client_information[:number_of_children] = "none"
	end

# What type of decor theme does the client want?

puts "Please describe the decor theme this client wants."
decor_theme = gets.chomp

client_information[:theme] = decor_theme

# Is this client allergic to anything?

puts "Is this client allergic to anything? (y/n)"
allergy = gets.chomp

	if allergy == "y"
		allergy = true
	else
		allergy = false
	end

client_information[:has_allergies] = allergy

# If the answer to the above is "yes", list them.

	if client_information[:has_children] = true

		loop do
		puts "What are your allergies? Type 'done' to finish."
		allergy_type = gets.chomp

		case allergy_type
		when 'done'
			break
		end

		client_information[:client_allergies] = allergy_type
	else
		client_information[:client_allergies] = "none"
	end

p client_information