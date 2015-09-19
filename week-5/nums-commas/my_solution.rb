# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a postiive integer
# What is the output? (i.e. What should the code return?) a comma
#   separated positive integer
# What are the steps needed to solve the problem?

=begin
def method
check if number is less than 4 digits
    if so
    	return number as string
    otherwise if number not less than 4
		turn the number into a string
		define an insertion point for the string
			this will be based on the strings length divided by 3
			  make it an integer
			let's call it breaker
		if the string is evenly divisible by 3
			define a variable to determine input of comma
				let's call it placer and assign it as -4
			run a loop breaker minus 1 times
			   for each iteration insert a comma into number
			   		in location placer
			   make placer equal to placer minus 4
			end the loop
			return number as a joined string
		otherwise when the string is not evenly divisibly by 3
			define a variable to determine input of comma
				let's call it placer and assign it as -4
			run a loop breaker times
			   for each iteration insert a comma into number
			   		in location placer
			   make placer equal to placer minus 4
			end the loop
			return number as a joined string
		end
	end
end

=end


# 1. Initial Solution
def separate_comma(number)
	if number < 4
	  return number.to_s
	else
	  number_as_string = number.to_s.split("")
	  breaker = number_as_string.length / 3.0
	  breaker = breaker.to_i

	  if number_as_string.length % 3 == 0
	  	placer = -4
	  	(breaker-1).times do |loop|
	  	  number_as_string.insert(placer, ",")
	  	  placer -= 4
	  	end
	    return number_as_string.join("")
	  else
	  	placer = -4
	  	breaker.times do |loop|
	  	  number_as_string.insert(placer, ",")
	  	  placer -= 4
	  	end
	  	return number_as_string.join("")
	  end
	end
end

#p separate_comma(1000)
#p separate_comma(1000000)
#p separate_comma(0)

# 2. Refactored Solution
def separate_comma_2(number)
	if number < 4
	  return number.to_s
	else
	  number_as_string = number.to_s.split("")
	  breaker = number_as_string.length / 3.0
	  breaker = breaker.to_i

	  if number_as_string.length % 3 == 0
	  	counter = 1
	  	while counter < breaker do
	  	  number_as_string.insert(-4*counter, ",")
	  	  counter += 1
	  	end
	  	return number_as_string.join("")
	  else
	  	counter = 1
	  	while counter <= breaker do
	  	  number_as_string.insert(-4*counter, ",")
	  	  counter += 1
	  	end
	  	return number_as_string.join("")
	  end
	 
	end
end

# 3. Reflection

=begin
	
What was your process for breaking the problem down? What different
approaches did you consider?
I considered many approaches. The first one that jumped out was
attempting to solve this problem through the use of recursion. If want
you want to accomplish is literally the same step over and over
again, recursion is a good option but doing it that way would
have been very tricky without the use of regex.

Another idea was to have to solve this problem by splitting the
number every time you insert a comma and assigning the result
to a new number variable. This would have the benefit of not having
to split the original number as it would continually be altered and
you would only ever have to consider 4 digits when deciding whether
or not to insert a comma.

After much thinking I settled on doing this through leaving the
number intact but looping through it as a string and adding
commas where appropriate each time until done.

Was your pseudocode effective in helping you build a successful
initial solution?

My final pseudocode was very effective at getting me to build a
solution that runs because I painstakingly wrote down every detail
for what I needed to do.

All I really needed to do when I implemented the code was to ensure
I didn't have any syntax errors and that I assigned every method
I added appropriately.

What Ruby method(s) did you use when refactoring your solution?
What difficulties did you have implementing it/them? Did it/they
significantly change the way your code works? If so, how?
I tried a great deal of methods that I had significant trouble
implementing, particularly Enumerable#each_slice which I attempted
to use to insert commas into my number in a single pass instead
of iterating through the array.

The methods I actually settled on worked fairly well once I got
the conditional operators to the correct values. They also didn't
significantly change my code.


How did you initially iterate through the data structure?
I initially iterated through the data by turning the original
number into a string, and testing that string to see if it was
evenly divisible by 3 (for where the). I used a simple loop
on this in order

Do you feel your refactored solution is more readable than your
initial solution? Why?
Not really. I think they are about the same. The main differences
in readability I think largely depend on the familiarity of the person
reading it with the methods used.

If anything the refactored method was a bit unconvential in that
I maniupulated the index by multiplying it by a counter.
	
=end