# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: array of strings
# Output: Die#roll randomly returns one of these strings;
#   return ArgumentError if an empty array is entered as a parameter
# Steps:

=begin
	
  1. Ensure each die has at least one label
  2. Assign the entered array as an instance variable
  3. Return the number of elements in the array from the sides method
  4. Return a random element from the array from the roll method
	
=end


# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Must enter labels for die sides")
  	end
  	@labels = labels
  end

  def sides
  	@labels.size
  end

  def roll
  	@labels.sample
  end
end

# Refactor

class DieAgain
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("Must enter labels for die sides")
  	end
  	@labels = labels
  end

  def sides
  	@labels.count
  end

  def roll
  	random = rand(0...@labels.size)
  	return @labels.at(random)
  end
end




=begin
	
What were the main differences between this die class and the last one
you created in terms of implementation? Did you need to change much
logic to get this to work?'
The main difference between this die class and the previous one was
how you returned the data you wanted to achieve. The structure and
logic of the two classes are exactly the same.

What does this exercise teach you about making code that is easily
changeable or modifiable?
When creating classes it can often be very helpful to make the initial
implementation of that class as generic as possible. This allows you
to allow any other classes to inherit behavior without having to
rewrite anything that isn't a new modification upon the original. 

What new methods did you learn when working on this challenge, if any?
None but I hadn't actually implemented Random#rand to return the
attributes of an array.

What concepts about classes were you able to solidify in this
challenge?
I think the Ruby unofficial motto that "there is more than one way
to do it" has sunk in a bit more by refactoring this challenge. There's
no real reason to write the class the way I did in my
refactored example but it's often interesting to just do things
differently in Ruby.
	
=end