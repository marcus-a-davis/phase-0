puts  "What's your first name?"
first = gets.chomp

puts  "What's your middle name?"
middle = gets.chomp

puts  "What's your last name?"
last = gets.chomp

puts "Hello " + first + " " + middle + " " + last



puts "What's your favorite number?"

fav_num = gets.chomp.to_i

new_num = fav_num + 1

<<<<<<< HEAD
puts "Your favorite number should be: " + new_num.to_s

=begin
	
How do you define a local variable?
A local variable is a memory location where you store data and begin
with lowercase letter or underscore. Local variables can have different
ranges depending on where they are placed in a class or module.

How do you define a method?
You define a method as follows:

def my_method

end

What is the difference between a local variable and a method?
A local variable can only store a specific piece of data but methods can
store one or more variables or, in general, repeatable units.

By using methods you can be sure you can limit, drastically, the amount
of repitition needed in your code and manipulate data in ways not
possible without them.

How do you run a ruby program from the command line?
You run a ruby file from the command line by typing the following:

"ruby your_file_here.rb"

As usual, you'll want to be sure you are in the correct directory or
specify the specific path before your file name.

How do you run an RSpec file from the command line?
You run an rspec file from the command line as follows:

"rspec spec_file_here.rb"

You'd want to be sure that the file you are seeking to test
is required at the top of your rspec file.

What was confusing about this material? What made sense?
Nothing was confusing as I have a bit of experience with Ruby so this
was all basic review.
	
end
=======
puts "Your favorite number should be: " + new_num.to_s
>>>>>>> master
