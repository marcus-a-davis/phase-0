require_relative 'state_data'

class VirusPredictor
  #take in initial arguments and assign them to instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #calling two private methods which calculates predicted deaths and speed of spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #predicts deaths based on population density and prints out expected number of deaths.
  def predicted_deaths
    case @population_density
      when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      when (151..200)
      number_of_deaths = (@population * 0.3).floor
      when (101..150)
      number_of_deaths = (@population * 0.2).floor
      when (51..100)
      number_of_deaths = (@population * 0.1).floor
      else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  #calculates and prints the speed of spread in months based on the population density of each state.

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
      when @population_density >= 200
      speed += 0.5
      when (151..200)
      speed += 1
      when (101..150)
      speed += 2
      when (51..100)
      speed += 2
      else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, value_hash|
      call_state = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
      call_state.virus_effects
end


=begin
What are the differences between the two different hash syntaxes shown
in the state_data file?
The outside hash, STATE_DATA itself, is a hash of hashes with Strings
as keys using "=>" notation. The inner hash was written with keys
as symbols using "sym:" style notation.

What does require_relative do? How is it different from require?
require_relative allows Ruby to load files using only the relative
directory of the file being loaded. By contrast, require needs a
reference to the absolute position of a file to be loaded.

What are some ways to iterate through a hash?
There are many ways to iterate through a hash. Depending on what you
want to accomplish, you can use "hash.each", "hash.each_pair",
"hash.keys" (to return the keys as an array), "hash.values" (to
return the values as an array) and many others.

When refactoring virus_effects, what stood out to you about the
variables, if anything?
There was no need to pass variables to virus_effects at all because
the data needed was stored in instance variables. This made
passing in that information superfluous as instance variables
can be accessed anywhere within a class on a particular instance
of an object.

What concept did you most solidify in this challenge?
I think attention to detail was something that this challenge
emphasized as it would have been easy to overlook certain aspects
of the way the class was initially implemented if you aren't
examining each input and output for necessity. 

  
=end