# Require sqlite and faker gems.

require 'sqlite3'
require 'faker'

# Create database for a list of pets, their species, their diet, and whether they have been fed.

chart = SQLite3::Database.new("schedule.db")

# Create pets table in database.

table_creation = <<-SQL
	CREATE TABLE IF NOT EXISTS pets (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		species VARCHAR(255),
		diet VARCHAR(255),
		fed BOOLEAN
	);
SQL

chart.execute(table_creation)

# The following code can be used to add data to one of the table rows.

chart.execute("INSERT INTO pets (name, species, diet, fed) VALUES ('Rover', 'dog', 'kibble', 'true')")

# Write method to add data to rows.

def scheduler(db, name, species, diet, fed)
	chart.execute("INSERT INTO pets (name, species, diet, fed) VALUES (?, ?, ?, ?)", [name, species, diet, fed])
end

# Write method to update values in rows.

def edit(id_number)
	puts "Enter the type of data you wish to update for this pet."
		if data_type == 'name'
			puts "What is this pet's name?"
			new_name = gets.chomp
			chart.execute(UPDATE pets SET name=new_name WHERE id=id_number;)
		elsif data_type == 'species'
			puts "What is this pet's species?"
			new_species = gets.chomp
			chart.execute(UPDATE pets SET species=new_species WHERE id=id_number;)
		elsif data_type == 'diet'
			puts "What type of diet does this pet need?"
			new_diet = gets.chomp
			chart.execute(UPDATE pets SET diet=new_diet WHERE id=id_number;)
		else
			puts "Has this pet been fed yet?"
			new_fed = gets.chomp
			chart.execute(UPDATE pets SET diet=new_ded WHERE id=id_number;)
		end
	chart.execute(SELECT * FROM pets;)
end
		