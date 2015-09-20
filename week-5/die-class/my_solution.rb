# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 35 minutes on this challenge.

# 0. Pseudocode

# Input: number of sides
# Output: number of sides; number from roll of die
# Steps:

=begin


Ensure each die is created with at least 1 side
Assign input for sides as instance variable

Sides function returns number of sides

Roll function returns random roll of die
	
=end


# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides >= 1
    	raise ArgumentError.new("Die must have at least one side")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution


=begin
	
No refactor is reasonable for this problem.
The only thing that could really be changed is what message is
displayed when the ArgumentError is raised.
	
=end




# 4. Reflection

=begin
	
What is an ArgumentError and why would you use one?
An ArgumentError is a type of exception from the Exception class.
It is returned when the argument entered is not what was required by
the method or class to which it was attempted to be passed.

What new Ruby methods did you implement? What challenges and
successes did you have in implementing them?
None. In my prior experience with Ruby I'd used Random#rand,
which returns a random number and, when specified, returns a random
number within a certain range.

What is a Ruby class?
A class in Ruby is basically an instruction manual for creating
objects.

Why would you use a Ruby class?
You use a class in Ruby to encapsulate data and blueprint how to make
objects. If, for example, you want to define behavior for a group of
related objects you'd define them all within a class. This is a
great way to have objects inherit functionality so you don't have to
repeat definitions.

In Ruby, all objects used for building programs themselves belong to
classes (which you can modify if you like). For example, any given
string is a member of the String class and as such inherits all
methods within the String class.

What is the difference between a local variable and an instance
variable?
Local variables are only available within the present scope. Typically
that means within a given method. You can't call a local variable from
method_A while in method_B. Also, local variables begin with a lower
case letter or underscore.

Instance variables, by contrast, are available from within multiple
methods for any particular object. This means they can be called
between methods. Every instance of a class has a different set of
instance variables.

They also must begin with "@" followed by a variable
name. Uninitialized instance variables have a value of nil. 

Where can an instance variable be used?
Instance variables can be created for any instance of a class but not
a class itself. As such it has access to all of the classes methods.

Instance variables are also fundamental to creating getter and setter
methods to be able to easily return data while not letting outside
classes reach directly into a class and manipulate data.
	
=end