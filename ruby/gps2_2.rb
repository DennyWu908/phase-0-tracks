# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

def list_creator(list)

	grocery_array = list.split(" ")
	grocery_array.each do |item|
		grocery_hash[item] = 1
	end
end

def add_item (item, quantity = nil)
		if quantity == nil
			quantity = 1
end
	grocery_hash[item] = quantity.to_i
end

list_creator("apples, bread, cheese, juice")

# steps: 
  # split string into items on an array
  # create hash, using items on list as keys
  # set default quantity (each quantity is the value of a key)
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps: add new key and associated value, if value is not specified, it should default to 1
# output: updated hash

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input: the grocery list hash
# steps: loop through each item, printing a sentence indicating the name and quantity of each
# output: the printed sentences