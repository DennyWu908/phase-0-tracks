class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
  	num.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(years)
  	puts years*7
  end

  def call(name)
  	puts "#{name.upcase}! HERE, #{name.upcase}!"
  end

  def initialize
  	puts "Initializing new puppy instance..."
  end

end

rover = Puppy.new

rover.fetch("frisbee")

class Hobbit

  def turn_invisible(name)
    puts "Where did #{name} go?"
    name
  end

  def sting
    puts "This sword glows in the presence of enemies."

  def initialize
    puts "Now hiring a burglar..."
  end

end