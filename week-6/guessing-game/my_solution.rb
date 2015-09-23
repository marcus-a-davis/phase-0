# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer answer
# Output: a symbol indicating if the answer was correct;
#   or if the answer was wrong, whether the guess was low or high
# Steps:

=begin
	
1. Mandate that answer accepts an integer
2. Create a method GuessingGame#guess that takes an integer input
3. Make GuessingGame#guess return symbols that indicate the
     relationship of the guess to the answer
4. Create a method GuessingGame#solved? that returns true
	 iff the most recent guess was correct
	
=end


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    unless answer.is_a?(Integer)
      raise ArgumentError.new("Answer must be an integer")
    end
    @answer = answer
  end

  # Make sure you define the other required methods, too

  def guess(guess)
  	@guess = guess

  	if @guess == @answer
  		:correct
  	elsif @guess > @answer
  		:high
  	else
  		:low
  	end	
  end

  def solved?
  	if @guess == @answer
  		true
  	else
  		false
  	end
  end

end

=end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    unless answer.is_a?(Integer)
      raise ArgumentError.new("Answer must be an integer")
    end
    @answer = answer
  end

  # Make sure you define the other required methods, too

  def guess(guess)
  	@guess = guess

  	guess_response
  end

  def guess_response
  	if @guess == @answer
  		:correct
  	elsif @guess > @answer
  		:high
  	else
  		:low
  	end
  end

  def solved?
  	@guess == @answer ? true : false
  end

end



# Reflection

=begin
	
How do instance variables and methods represent the characteristics
and behaviors (actions) of a real-world object?
Instance variables and methods can be easily mapped onto the
behavior of objects in the real world. For example, take the concept
of machines. Machines can perform operations like starting,
shutting down, or navigating. Further, machines can have states
like temperature, location, etc. However the abstract concept of a
machine can't actually have any of this functionality or states.
For that you would need a particular instance of a machine.

Similarly, if you were to model this in a programming language, you
could create a Machine class that would also be a mere abstraction.
To have functionality you'd have to create a particular instance
of the machine. Once you've done that you could have a machine with
functionality, or methods in Ruby-speak. Any particular machine
could then have an actual state like temperature which could be
stored in an instance variable.

When should you use instance variables? What do they do for you?
Instance variables allow you to pass particular instances of an
object between methods. This accesibility within methods allows
programmers to contain only particular behavior to each method
such that they all have a simple structure. Generally speaking,
it's consider good form for each method to only perform one
task. Without instance variable this wouldn't be possible.

You shuold use instance variables when you want to keep the properties
of an object constant throughout multiple methods within a class.

Explain how to use flow control. Did you have any trouble using it in
this challenge? If so, what did you struggle with?
There are many aspects of flow control. If, then and case
statements, unless, while, until and for statements,
ternary and spaceship operators and a few others allow you to control
what happens to be conditional on a certain statement being true
(or false) or to simply execute a piece of code a certain number of
times.

I didn't have any trouble with such flow control in this challenge.

Why do you think this code requires you to return symbols? What are
the benefits of using symbols?

First and foremost, I think they want us to get familiar with using
symbols in methods. Though symbols have becoming String-like
behavior as Ruby has been updated, there are still quite different
fundamental concepts to learn. Secondly, the uniqueness of symbols
means that there is only ever one state for the guess to produce.

This can be useful if you want to ensure the exact same object
is returned. If you were to write a string each time you a particular
change is made, a new String object would be created each time. By
contrast, by using symbols you can ensure that that there is only
ever one object which exists with a particular state.
	
=end