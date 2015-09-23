#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

class NameData

  attr_accessor :name

  def initialize
	@name = "Marcus"
  end

end

class Greetings
 def initialize
 	@name_data = NameData.new
 end

 def print_greeting
   puts "Hello #{@name_data.name}! Good to see you."
 end
end

greet = Greetings.new
greet.print_greeting


# Reflection

=begin
	
--------------------------  Release 1  --------------------------

What are these methods doing?
The methods are allowing the data created in the initialize method to
read, altered and printed. The "what_is_[blank]" methods allow you
to access the values of the instance variables outside of the class
(in this case in the driver code).

Likwise, the "change_[blank]=(new_[blank])" methods are allowing
the values of the instance variables to be changed from outside the
class.

How are they modifying or returning the value of instance variables?
The methods are returning values by defining the "what_is_[blank]"
methods as returning the instance variable. You can then call that
method outside the class and recieve the instance variable.

Similarly, the "change_[blank]=(new_[blank])" are allowing
the values of the instance variables to be changed from outside the 
class by redefining the instance variable to whatever new value
is entered when you call the "change_[blank]=(new_[blank])" method.


--------------------------  Release 2  --------------------------

What changed between the last release and this release?
An attribute reader was used to make the age instance variable
readable from outside the class. Also, the method name what_is_age
was changed to "age".

What was replaced?
The what_is_age method was replaced by the attr_reader which 
accomplished the same thing that it would have.

Is this code simpler than the last?
Visually and to type, yes. Functionally it is identical.

--------------------------  Release 3  --------------------------

What changed between the last release and this release?
An attribute write was used to make the age instance variable
writable from outside the class. 

What was replaced?
The change_my_age method was replaced by the attr_writer which 
accomplished the same thing that it would have.

Is this code simpler than the last?
Again, visually and to type, yes but the code is still functionally
identical to how it was in release 1.


--------------------------  Release 6  --------------------------

What is a reader method?
A reader method is a method that allows data to be read outside
of the class in which the method resides. You can create one
by defining a class which returns a particular instance variable
or by using attr_reader to do the exact same thing.

What is a writer method?
A writer method is a method that allows data to be changed outside
of the class in which the method resides. You can create one
by defining a class which returns a particular instance variable
or by using attr_writer to do the exact same thing.

What do the attr methods do for you?
They allow data to be read or written outside of the class in which
they reside. Given that creating reader and writer methods
is extremely common, Ruby allows you to write attr methods to
shorten and visually simplify your code.

Should you always use an accessor to cover your bases? Why or Why not?
No. Sometimes you may only want your data to be able to be read, but
not altered. A good example may be a website which allows different
permissions for different users. Some users may be able to read
and write data, while others can only read data.

What is confusing to you about these methods?
Nothing, really. I've had prior practice using them in Ruby and the
equivalent getter and setter methods in Java.

=end