# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative adds the code or data from a different file to the relevant sections of a program.
# In this case, require_relative is used to add the name, population density, and population of a state to the parameters of the methods of the VirusPredictor class.
# Require_relative takes the location of a file relative to a current file. Require, on the other hand is not relative to a current file.
#
require_relative 'state_data'

class VirusPredictor

# Creates an instance of the class, specifies 3 attributes.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end  

# Calls two other methods, which remain private outside of the virus_effects method.
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
  end

  private

# Runs a specific line of code (and equation) based on population_density argument.
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density

    speed = 0.0

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end


    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

# Depending on population_density, the method returns a speed of spread in months.
  #def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |name, data|
  effect = VirusPredictor.new(name, data[:population_density], data[:population])
  effect.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section