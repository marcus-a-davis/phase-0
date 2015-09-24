# Your Names
# 1) Jupiter Baudot
# 2) Marcus

# We spent 75 minutes on this challenge.

# Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity)
#   menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3


#   # This code it essentially iterating over our library input as an array.  If the value entered is a key associated with value in the hash that isn't nil, then the value counts down to zero
#   menu.each do |food|  
#     if menu[food] != menu[item_to_make]
#       error_counter += -1
#     end
#   end

#   # Checking to see if the item_to_make is in library
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
#   #library[item_to_make]
#   # assigning serving_size as the value of the array item_to_make
#   #   and returning as an array
#   # serving_size_mod set as remainder of order_quantity divided by
#   #   serving_size
#   serving_size = library.values_at(item_to_make)[0]
#   excess_serving = order_quantity % serving_size
#   # When serving_size_mod is 0 it returns the amount of the item it'll make
#   case excess_serving
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{excess_serving} leftover people to serve." 
#   end
# end

def serving_size_calc(item_to_make, order_quantity)
  menu = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  if menu[item_to_make] == nil 
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  
  
  serving_size = menu[item_to_make]
  excess_serving = order_quantity % serving_size
  
  if excess_serving == 0
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{excess_serving} leftover people to serve." 
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
#p serving_size_calc("THIS IS AN ERROR", 5)


=begin
-------------------  Reflection  -------------------
What did you learn about making code readable by working on this
challenge?
This was a good example of how unreadable code can be while
still functioning. Rarely, I would hope, would you come across code
as poorly written as this but it's a reminder that code should be
written for ease of understanding by other people.

Did you learn any new methods? What did you learn about them?
No.

What did you learn about accessing data in hashes?
As with many things in Ruby, there is more than one way
to access data in hashes. That said, the way originally written
into this code were particularly poor ways to do so as the original
code was returning a value from a hash by implicitly turning the hash
into an array and accessing the zeroth element in the array.

What concepts were solidified when working through this challenge?
At a high level the importance of keeping code readable and
maintainable was deeply enforced by going over a particularly
nightmare example.

At a more specific level, it was nice to have to explicitly say out
loud what each section of the code was doing and how. This helped me
be very clear about how, for example, Ruby's built in methods
often give hints about their functionality in their name.
  
=end