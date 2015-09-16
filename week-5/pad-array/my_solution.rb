# Pad an Array

# I worked on this challenge with: Samuel Frederick Purcell.

# I spent 1 hour on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode


# What is the input? array, min_size, optional pad value
# What is the output? (i.e. What should the code return?) array
# What are the steps needed to solve the problem?

=begin
for pad!	
if size of array is less min_size then
	add value to array until it's equal to min_size
	return original array with changes
else
	return array
=end

=begin
for pad	
	create new array equal to old array
if size of original array is less min_size then
	add value to new array until it's equal to min size
	return new array
else
	return new array
=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
  	while array.length < min_size
  		array << value
  	end
  	return array
  else
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.push(*array)
  if new_array.length < min_size
  	while new_array.length < min_size
  		new_array << value
  	end
  	return new_array
  else
  	return new_array
  end
end

# 3. Refactored Solution
def re_pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.push(*array)
  if new_array.length < min_size
  	new_array.fill(value, new_array.length..min_size-1)
  	return new_array
  else
  	return new_array
  end
end

p re_pad([1,2,3], 5,"apple")

# 4. Reflection
=begin
  
Were you successful in breaking the problem down into small steps?

Yes. We both had a pretty good idea of what we wanted to do and
how to go about tackling the problem.

Once you had written your pseudocode, were you able to easily translate
it into code? What difficulties and successes did you have?
It was pretty straightforward to turn the pseudocode into runnable
Ruby code as Ruby is pretty similar to English (compared to other
programming languages). 

Was your initial solution successful at passing the tests? If so, why do
you think that is? If not, what were the errors you encountered and what
did you do to resolve them?
The very first thing we wrote after translating from pseudocode wasn't
successful as we'd forgotten to return the array in the first section
of the if/else conditional statement. That was pretty easily fixed.

More challenging was undersstangin why the non-desctructive pad method
didn't pass all the test at initially. Originally, we were assigning a
new array (new_array) to the array passsed in (array). This didn't pass
all the tests because when you assign a variable to another variable
they both point at the same object in memory. To get around this
we fed the original array into the new array before making the initial
comparison between the array length and the minimum required size.

When you refactored, did you find any existing methods in Ruby to clean
up your code?
We used Array#fill to replace the while loop in our original code.
This method gives you the ability to insert elements into an array
and define exactly where that insertion begins and ends.

How readable is your solution? Did you and your pair choose descriptive
variable names?
I think the code is pretty readable as the names for our variables
are very descriptive. However, ironically, I think the original
code is perhaps easier to read than the refactored code though this
be my bias from not being used to seeing Array#fill used very much.

What is the difference between destructive and non-destructive methods
in your own words?
The difference between the two is the non-destructive method returns
a new array instead of returning the array you used as input. By
contrast, the destructive method returns an altered version of the
original array you initially passed to the method.

  
end