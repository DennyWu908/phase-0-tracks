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

