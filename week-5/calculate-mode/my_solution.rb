# Calculate the mode Pairing Challenge

# I worked on this challenge with: Lauren Jim

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? array of strings or numbers
# What is the output? (i.e. What should the code return?) mode of array
# What are the steps needed to solve the problem?

=begin
	
take array as input
if array has numbers
	feed array values into hash as keys
	count number of times keys is entered
	return highest count 
else array has strings
	count number of times strings appear
	return highest count
=end


# 1. Initial Solution
def mode(array)
	
	count_elements = Hash.new(0)

	array.each do |element|
		count_elements[element] += 1
	end
	 

	freq_array = []

	count_elements.each do |key, value|
      if value == count_elements.values.max
      	# freq_array = counter.key[(max)]
      	# return freq_array
      	freq_array << key
        end
      end
	freq_array.sort	

end

p mode([4, 4, 5, 5, 6, 6, 6, 7, 5])
p mode (["apple", "banana", "clementine",
	"banana", "cherry", "strawberry", "cherry"])

# 3. Refactored Solution




# 4. Reflection