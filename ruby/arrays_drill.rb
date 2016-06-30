def add_array_item(arr, value)
	arr << value
end

p add_array_item(["a", "b"], "c")
=> ["a", "b", "c"]

p add_array_item(["Hearts", "Diamonds", "Clubs"], "Spades")
=> ["Hearts", "Diamonds", "Clubs", "Spades"]

p add_array_item(["Red", "Yellow"], "Blue")
=> ["Red", "Yellow", "Blue"]

p add_array_item(["Gold", "Silver"], "Bronze")
=> ["Gold", "Silver", "Bronze"]

def create_array(first, second, third)
	new_array = [first, second, third]
end

grocery_list = []

p grocery_list

grocery_list << "yogurt"

grocery_list << "bread"

grocery_list << "lunchmeat"

grocery_list << "cheese"

grocery_list << "oranges"

p grocery_list

grocery_list[2]

grocery_list.delete_at(2)

p grocery_list

grocery_list.insert(2, "peanut butter")

p grocery_list

grocery_list.delete("yogurt")

p grocery_list

grocery_list.include?("bread")

p grocery_list[0]

second_list = ["lunchmeat", "lettuce", "tomatoes"]

complete_list = grocery_list | second_list

p complete_list

p create_array("a", "b", "c")
=> ["a", "b", "c"]