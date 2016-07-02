library = {
	history_section: {
		furniture: {
			sofas: 2,
			couches: 2,
			tables: 4,
			chairs_per_table: 4
		},
		books: ["History of the World, Volume 1", "History of the World, Volume 2", "The Chinese Dynasties", "The Roman Empire"]
	},

	fiction_section: {
		furniture: {
			sofas: 5,
			couches: 5,
			tables: 8,
			chairs_per_table: 4
		},
		books: ["The Complete Works of William Shakespeare", "The James Bond series", "The Complete Works of Charles Dickens", "The Lord of the Rings"]
	},

	childrens_section: {
		furniture: {
			sofas: 8,
			couches: 8,
			tables: 3,
			chairs_per_table: 4
		},
		books: ["The Artemis Fowl Series", "The Harry Potter series", "World History for Children", "Assorted Manga"],
		computers: {
			connected_to_internet: true,
			connected_to_printers: true
		}
	}
}

library[:fiction_section][:furniture][:couches]
=> 5

library[:history_section][:books][2]
=> "The Chinese Dynasties"

library[:childrens_section][:computers][:connected_to_printers] = false
=> false

library[:fiction_section][:books].reverse
=> ["The Lord of the Rings", "The Complete Works of Charles Dickens", "The James Bond series", "The Complete Works of William Shakespeare"]

library[:history_section][:books].insert(2, "The American Revolution")
=> ["History of the World, Volume 1", "History of the World, Volume 2", "The American Revolution", "The Chinese Dynasties", "The Roman Empire"]