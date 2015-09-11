# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below

# for each number in your array down to n -1 
# multiply n-1 by (n-1) - 1
# return total of parameter 

# range up to input - 1
# (n-1 .. 2).each {|i| n*= i}



def factorial(number)
  
  if number == 0
    p 1
  else
  (1 .. number - 1).each {|i| number*= i}
    p number
  end
end
factorial (0)
