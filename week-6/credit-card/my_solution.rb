# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Kai Huang.
# I spent 70 minutes on this challenge.

# Pseudocode

# Input: 16 digit number
# Output: true or false
# Steps:

=begin
convert card number into string

split the string into individuals characters
convert the individual characters into numbers
starting at position zero the even numbered positions will be doubled

convert each element back into a string
split any numbers greater than 9
convert all strings back to integers
add them all back together

test if total evenly divisible by 10



=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  
  attr_reader :number
  def initialize(number)
    @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("Credit card number must be 16 digits long")
    end
    
    
  end

# Initial solution  
#   def check_card
#     @number = @number.to_s.split("")
#     p @number
    
#     @number.map! do |digit|
#       digit.to_i
#     end
#     p @number
    
#     count = 0
#     while count < @number.length
#       if count % 2 == 0
#         @number[count] = @number[count] * 2
#       end
#       count += 1  
#     end
#     p @number
    
#     @number.map! do |digit|
#       digit.to_s
#     end
#     p @number
    
#     @number.map! do |digit|
#       if digit.length > 1
#         digit.split("")
#       else 
#         digit
#       end
#     end
#     @number.flatten!.map! do |digit|
#       digit.to_i
#     end
#     p @number
    
#     sum = @number.inject{|sum, x| sum + x }
   
#       p sum
    
#     if sum % 10 == 0
#       p true
#     else
#       p false
#     end
#   end
    
# end

  
  # Refactored solution
   
  def check_card
    @number = @number.to_s.split("").map!{ |digit| digit.to_i}
  
    count = 0
    while count < @number.length
      if count % 2 == 0
        @number[count] = @number[count] * 2
      end
      count += 1  
    end
    
    
    @number.map! do |digit|
      if digit.to_s.length > 1
        digit.to_s.split("")
      else 
        digit.to_s
      end
    end
    
    

    @number.flatten!.map! do |digit|
      digit.to_i
    end
    
    sum = @number.inject{|sum, x| sum + x }
   
    
    if sum % 10 == 0
      p true
    else
      p false
    end
  end
    
end

card = CreditCard.new(4563960122001999)
  
card.check_card

# Refactored Solution

=begin
  
What was the most difficult part of this challenge for you and
your pair?

Though we ran into a few stumbles when trying to implement the code
the biggest challenge, was actually planning out how to attack
the problem. There are many ways to solve this problem, particularly
iterating over the credit card number and doubling every other
number. We thoroughly discussed which approach to take before settling
on turning the input into a string before getting to that step and
running a while loop with a counter.

What new methods did you find to help you when you refactored?
We initially had quite a few methods doing much of the work for us
so when refactoring we focused on cutting this code down to
a digestable size and combining what we could.

What concepts or learnings were you able to solidify in this
challenge?

I think this was very good practice at implementing a more realistic
example of dealing with data. You won't always be fed inputs that
are ideal for you to manipulate in the ways you need so it was 
great to get practice converting the initial card number and
changing the data as different types of objects.
  
=end







# Reflection