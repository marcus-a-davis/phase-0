# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Chris Mark.

# 0. total Pseudocode
# make sure all pseudocode is commented out!



# Input: any array you pass in the method
# Output: sum of elements of the array
# Steps to solve the problem.

# method that accepts an array
# each iterator that adds all elements together
# return sum of elements


# 1. total initial solution
def total(array)
  sum = 0
  array.each {|i| sum += i}
  sum
end
total([6,4,3,2])

# 3. total refactored solution
def refact(array)
  array.inject {|sum, i| sum + i}
end

p refact([2,5,3])
# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: strings in an array
# Output: sum of strings
# Steps to solve the problem.

#method that accepts an array
# each iterator that add strings together
# capitilize new summed string
# return summed string


# 5. sentence_maker initial solution
def sentence_maker(sentences)
  sum = ''
  sentences.each {|i| sum += i.to_s + " "}
  sum.strip!.capitalize!
  sum = sum + "."
end


# 6. sentence_maker refactored solution

def refactor_sentences(sentences)
  sum = sentences.join(sep=" ").capitalize!
  sum += "."
end
