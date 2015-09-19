# Calculate the mode Pairing Challenge

# I worked on this challenge with: Lauren Jim

# I spent 110 minutes on this challenge.

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
def mode(mode)
  mode_return = mode.inject(Hash.new()) do |key, value|
  	key[value] = mode.count(value);
  	key
  end
  mode_return.select {|key, value| value == mode_return.values.max}.keys
end

p mode([4, 4, 5, 5, 6, 6, 6, 7, 5])
p mode(["apple", "banana", "clementine",
  "banana", "cherry", "strawberry", "cherry"])

# 3. Refactored Solution

def mode_2(array)
  
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
p mode_2([4, 4, 5, 5, 6, 6, 6, 7, 5])
p mode_2(["apple", "banana", "clementine",
  "banana", "cherry", "strawberry", "cherry"])




# 4. Reflection
=begin
	
Which data structure did you and your pair decide to implement and why?
Initially we thought it would be easy to do this with a hash containing
the values as keys and a count of how many times those items appear
as values. This seemed like the best way to be able to withdraw
the initial values based upon count information. 

Were you more successful breaking this problem down into implementable
pseudocode than the last with a pair?
No, actually this was harder than previous time pairing but that
was likely due to the task and not the familiarity with pseudocode.

What issues/successes did you run into when translating your pseudocode
to code?
Many problems came up tops among them that it just proved more
difficult to do the things we said than anticipated even though
we broke the initial problem done pretty well. It's easier to say
"feed array values into hash as keys and count the number of times
each value is entered" than it was to actually get the code to run.

What methods did you use to iterate through the content? Did you find
any good ones when you were refactoring? Were they difficult to 
implement?
We used inject to iterate through the initial array and feed the
values to a hash. However, when refactoring we went the opposite
direction as we found the initial code a bit dense.

We found this much problem easier when using a simple each method than
doing this with inject and select. Moreover done that way it was
just easier to read.
	
=end