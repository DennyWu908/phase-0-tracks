# Allow a user to input a name, and split the name into an array of two words.

agent = gets.chomp.split(' ')

# Reverse the order of the words, then split them into letters.

agent.rotate(1)

# Convert the array into a string.

# Change each vowel to the next vowel in the alphabetical order.

# Change is consonant to the next consonant in the alphabetical order.

# Print the new name.

##############################################

# Note: I was unable to write a method using the algorithm described. I have decided to complete the assignment based on the alternate set of
# instructions. The method below will convert each letter in a name to the next letter in alphabetical order.
# Below is the psuedocode for this method, along with the actual code.

def name_change(agent)
	code_list = []
	name = agent
	coded_name = name.split('')

# After the user enters a name, the name will be split into separate letters, which will be placed in an array.

	coded_name.map! { |code| code.next }

# Each letter in the array will then be changed to the letter that follows it in the alphabet.

	coded_name
	false_name = coded_name.join('')

# Finally, the letters will be joined back into a new string. This string is the result of the original name being changed by this method.

	code_list << false_name

# The above line will store the changed names in an array, which was initialized at the beginning of the method.

end

loop do
	puts "Welcome, Agent. This is an experimental program designed to convert your name into a string of random characters, which will be used as your alias in a coded message. To use it, please enter your name. When you are finished, type 'quit'."
	agent = gets.chomp
			
	break if agent == 'quit'
	puts name_change(agent)
end

code_list.each do |fake|
	puts "For the purposes of coded messages #{agent} will be known as #{fake}."
end

# I am resubmitting this assignment. I have revised the code for the program above (the name_change method and the user interface).
# The updated code is below.

$code_list = {}

def name_change(agent)
	coded_name = agent.split('')

# After the user enters a name, the name will be split into separate letters, which will be placed in an array.

	coded_name.map! { |code| code.next }

# Each letter in the array will then be changed to the letter that follows it in the alphabet.
	coded_name
	false_name = coded_name.join('')

# Finally, the letters will be joined back into a new string. This string is the result of the original name being changed by this method.

	$code_list[agent] = false_name

# The above line will store the changed names in an array, which was initialized at the beginning of the method.

end

loop do
	puts "Welcome, Agent. This is an experimental program designed to convert your name into a string of random characters, which will be used as your alias in a coded message. To use it, please enter your name. When you are finished, type 'quit'."
	agent = gets.chomp
			
	break if agent == 'quit'
	puts name_change(agent)
end

$code_list.each do |agent, false_name|
	puts "For the purposes of coded messages #{agent} will be known as #{false_name}."
end