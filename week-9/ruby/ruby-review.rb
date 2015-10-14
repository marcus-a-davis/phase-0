# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

=begin
	
Inputs: method that accepts an array
Output: Array with multiples of 3 replaced by "Fizz",
		multiples of 5 replaced by "Buzz", and multiples of
		15 replaced by "FizzBuzz"
	

1.  Iterate over array
2.  Define variables fizz and buzz to "Fizz" and "Buzz" respectively
3.	FOR each element in the array
		Check if element is divisible by 15,
			if so change element to fizz plus buzz
		ELSE IF element is divisible by 3
			change element to fizz
		ELSE IF element is divisible by 5
			change element to buzz
		ELSE
			return element as is
		END else loop
	END iteration
4. Return array
			
=end


# Initial Solution

def super_fizzbuzz(array)
	fizz = "Fizz"
	buzz = "Buzz"

	array.map! do |element|
		if (element % 3 == 0) && (element % 5 == 0)
			element = fizz + buzz
		elsif element % 3 == 0
			element = fizz
		elsif element % 5 == 0
			element = buzz
		else
			element
		end
	end
	array
end

p super_fizzbuzz([30, 9, 20, 1])
p super_fizzbuzz([15, 5, 3, 1])

# Refactored Solution

def super_fizzbuzz(array)
	fizz = "Fizz"
	buzz = "Buzz"

	array.collect! do |element|
		if (element % 3 == 0) && (element % 5 == 0)
			element = fizz + buzz
		elsif element % 3 == 0
			element = fizz
		elsif element % 5 == 0
			element = buzz
		else
			element
		end
	end
	array
end




# Reflection