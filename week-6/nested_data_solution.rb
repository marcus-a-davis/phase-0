# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

#

array = [ [1,2], ["inner", ["eagle", "par", ["FORE", "hook"] ] ] ]


# attempts:
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
p hash[:outer][:inner]["almost"][3]

# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}
p nested_data[:array][1][:hash]

# attempts:
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
#number_array = [5]

# number_array.map! do |element| 
#   if element.is_a?(Array)
#     element.map {|inner| p inner + 5}
#     #.map returns a new array containing the new values
#   else
#   p element + 5
#   end
# end

# p number_array


number_array.map! do |element|
  case element
  when Array
    element.map {|inner| p inner + 5}    
  else Integer 
    p element + 5
  end
  
end

p number_array




# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"] ] ]



=begin
	
What are some general rules you can apply to nested arrays?
I think the best general rule when working with nested arrays
is to simply think of them as arrays. Accessing inner elements
doesn't require any radically new syntax but the attention
to detail to call the element you'd like to gather. And, given
you can call elements by passing in literal values, even that
isn't completely neccessary.

What are some ways you can iterate over nested arrays?
You can use the Enuerable#each or Enumerable#map to iterate over
the elements in an array. Of course, there are many other options
depending on what you want you to select from the array or
change about the array elements.

Did you find any good new methods to implement or did you re-use one
you were already familiar with? What was it and why did you decide
that was a good option?
We stuck with using the Enumerable#map method, which we were
familiar with. We went with it becuase it by default returns an
array and we wanted the inner elements of the nested arrays, which
were themselves arrays, to remain so.
	
=end