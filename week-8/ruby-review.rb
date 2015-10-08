# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
the assert method checks to see if the variable name is equal
	to "bettysue".
It is, so the assert method yields.

Then, the assert method checks to see if name is equal to 
	"billybob".
It is not so the assert method does not yield and the error is raised.

	
end


# 3. Copy your selected challenge here

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
1. convert each element back into a string
2. split any numbers greater than 9
3. convert all strings back to integers
4. add them all back together
5. test if total evenly divisible by 10
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
  
# card.check_card


# 4. Convert your driver test code from that challenge into Assert Statements
def assert_num
	raise "Card not 16 digits" unless true
end

def assert
  raise "Assertion failed!" unless yield
end

assert { card.check_card == true }
assert_num {card.to_s.length == 16}




# 5. Reflection
=begin
What concepts did you review or learn in this challenge?
I hadn't ever constructed my own native asserts until I did so here.
Building them was super useful as it's often the case while coding
you want to write your own tests to ensure your code is doing
precisely what you want it to.

What is still confusing to you about Ruby?
I still need to learn more about the behavior of classes you create.
You can make them inherit behavior expicitly, but there is also
some native functionality built in and I need to be super clear on
how this all works and what methods I'm able to call on objects
of this new class.


What are you going to study to get more prepared for Phase 1?
In short, everything. I feel like I have much to learn about all
aspects of programming but will likely focus on OOP, inheritance,
and passing variables between classes. Provided the time, I'd
also like to read about algorithms a bit more.
=end