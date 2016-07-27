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

