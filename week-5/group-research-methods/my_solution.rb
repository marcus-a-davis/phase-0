# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  new_array = []

  source.each do |input|
    if input.is_a?(String)
       if input.include?(thing_to_find)
           new_array << input
      else
        next
      end
    else
      next
    end
  end

  return new_array  
end




def my_hash_finding_method(source, thing_to_find)
  new_array = []

  source.each do |key, value|
    if value == thing_to_find
      new_array << key
    else
      next
    end
  end
  return new_array
end

# Identify and describe the Ruby method(s) you implemented.
=begin
  
I solved the both sections of my release with the Array#each and
the shovel operator (<<). The each method iterates over the array
or hash input and for each item it contains it performs whatever
you have assigned it to do in the code block.

The shovel operator (<<) adds whatever follows it to whatever
preceded it. This means "example << add_me" wpuld add add_me to
the contents of example.

Finally, for the array method, I also used the Object#is_a? method
to test whether the input into was a String. Object#is_a? returns true
if the object you are testing is a member of the class you are
asking. For example, "3.is_a?(String)" will return false because
3 is an Integer and not a string.
  
=end

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#