class TodoList
	def initialize(first,second)
		da_items = []
		da_items << first
		da_items << second
	end

	def get_items
		p da_items
	end

	def add_item(additional)
		da_items << additional
	end

	def delete_item (position_number)
		da_items.delete_at(position_number)
	end

	def get_item(position)
		da_items.at(position)
	end
end