# Pseudocode
# Method to create a list - without using a class
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
 # take the string inputed, split it into an array, use array to create a hash with the items of the array becoming keys and the default quantity (1) becoming the value
 # set default quantity - assign a variable equal to 1 for the default
 # print the list to the console - call print_list method
# output: grocery list

# Method to add an item to a list
# input: item name and optional quantity
# steps: use default parameter value of 1 for the quantity
        # add item to list with quantity
# output: print out new list

# Method to remove an item from the list
# input: item to be removed
# steps: .delete(item), item as key of hash entry
# output: print out new list

# Method to update the quantity of an item
# input: item name and new quantity
# steps: assign inputed quantity to item/key
        # if item isn't in hash, add it with new quantity
# output: print out new list

# Method to print a list and make it look pretty
# input: none needed
# steps: LOOP through items in list
        # inside loop, print item and quantity in a sentence
# output: printed list

def create_list(initial_list = "")
    groceries = {}
    list_array = initial_list.split(' ')
    list_array.length.times do |i|
        groceries[list_array[i]] = 1
    end
    print_list(groceries)
    groceries
end

def add_item(list, item, quantity = 1)
    list[item] = quantity
    print_list(list)
    list
end

def remove_item(list, item)
    list.delete(item)
    print_list(list)
    list
end

def update_quantity(list, item, new_quantity)
    list[item] = new_quantity
    print_list(list)
    list
end

def print_list(list)
    puts "Grocery List"
    list.each do |item, quantity|
        puts "#{quantity} #{item}"
    end
    puts ""
end

# The following is driver code.
# grocery_list = create_list("carrots spaghetti bread")
# add_item(grocery_list, "pears")
# add_item(grocery_list, "peaches", 2)
# remove_item(grocery_list, "pears")
# update_quantity(grocery_list, "carrots", 3)
# print_list(grocery_list)
# The driver code ends here.

list = create_list()
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update_quantity(list, "ice cream", 1)