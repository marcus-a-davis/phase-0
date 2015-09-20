# Pseudocode

=begin
	
define a method that takes a list of names
	call it name_list
  
  create a variable to store groups
    call it group_set
  while there are still elements in name_list do the following:
  	check if 10 or more elements in name_list
  	if so
  		remove first 5 elements of name_list and
  		insert them into group_set
    otherwise if there are 10 or less elements in name_list
      check if the number of remaining elements in name_list
      	is evenly divisible by 5
      if so do the following
		remove first 5 elements of name_list and
  		insert them into group_set
      otherwise check if the number of remaining elements in name_list
      	is evenly divisible by 4
      if so do the following
		remove first 4 elements of name_list and
  		insert them into group_set
  	  otherwise if the number of elements in name_list
      	isn't evenly divisible by 4 or 5
      	do the following:
      	  remove first 4 elements of name_list and
  		  insert them into group_set

  		  remove first 3 elements of name_list and
  		  insert them into group_set
  	  end if conditional statement
    end if conditional statement
  end while loop
end method definition
=end


# Initial Solution

cohort = ["Kim Allen", "Shunqian Luo (Nathan)",
  "Jenna Andersen", "Pamela Antonow", "Jupiter Baudot", "Ovi Calvo",
  "Awilda Cantres", "Celeste Carter", "Mike Cerrone", "Eunice Choi",
  "Un Choi", "Kristie Chow", "Regina Compton", "Marcus Davis",
  "Paul Etscheit", "Solomon Fernandez", "Marcel Galang",
  "Aurelio Garcia", "Hector Jair Moreno Gomez", "Zino Hu", "Kai Huang",
  "Alex Jamar", "Harmin Jeong", "Lauren Jin", "CJ Joulain",
  "Michael Landon", "Richard Leo", "Julian Lesse", "Ryan Lesson",
  "Ian Lockwood", "Alison Lyons", "Christopher Mark", "Lauren Markzon",
  "Miguel Melendez", "David O'Keefe", "Nathan Park", "Landey Patton",
  "Farman Pirzada", "Sam Purcell", "Salim Rahimi", "Colin Razevich",
  "Irina Renteria", "Jamie Runyan", "Eric Shou",
   "Michael Silberstein", "Rosslyn Sinclair-Chin", "Aji Slater",
   "Marvy Tagala", "George Warnbold", "Shawn Watson", "Hana Worku",
	"Nicholas Yee"]

def make_accountability_groups(name_list)
  group_set = []
  while name_list.length != 0
    if name_list.length > 10
  	  group_set << name_list.slice!(0, 5)
  	else
  	  if name_list.length % 5 == 0
  	    group_set << name_list.slice!(0, 5)
  	  elsif name_list.length % 4 == 0
  	  	group_set << name_list.slice!(0, 4)
  	  else
  	  	# name_list.length will be equal to 7
  	  	group_set << name_list.slice!(0, 4)
  	  	
  	  	group_set << name_list.slice!(0, 3)
  	  end
    end
    
   end
   group_set
end

# make_accountability_groups(cohort)

# Refactor
def make_accountability_groups_refactored(name_list)
  group_set = []
  while name_list.length != 0
    if name_list.length > 10
  	  group_set << name_list.slice!(0, 4)
  	else
  	  if name_list.length % 5 == 0
  	    group_set << name_list.slice!(0, 5)
  	  else 
  	  	name_list.length % 4 == 0 ? 
  	  		group_set << name_list.slice!(0, 4) :
  	  		  group_set << name_list.slice!(0, 4) && group_set << name_list.slice!(0, 3)	  	
  	  end
    end
    
   end
   group_set
end

p make_accountability_groups(cohort)

# Reflect

=begin
	
What was the most interesting and most difficult part of this
challenge?
Planning out how to do this was challenging and interesting. There
were many ways to approach this problem but many of them, like
dynamically assigning each group its own variable and name, would have
been very complex.

In the end, coming to realize that this was a pretty straightforward
divide and conquer problem meant that I went with a simpler way
to build this.

Do you feel you are improving in your ability to write pseudocode and
break the problem down?
I initially went for a much larger solution than was necessary with
this problem but I definitely feel I'm trending in the right
direction. Even with this challenge I didn't feel the problem with
my pseudocode was so much writing things that can be easily
comprehended and translating into runnable code but that the
density of my proposed solution made the pseudocode quite lengthy
and repititive.

Was your approach for automating this task a good solution? What could
have made it even better?
I think my solution to this task works pretty well and can be easily
altered to be more accurate given the simplicity and clear flow
of the code.

Still, this solution could definitely be better by adding an explicit
minimum requirement for groups to be no less than 3. You could also
add names to each of the groups by assigning them to a hash.

What data structure did you decide to store the accountability groups
in and why?
I decided to store the groups as arrays because it's quite easy
to manipulate strings to become arrays.  

What did you learn in the process of refactoring your initial
solution?
My initial solution was pretty simple but very readable,
something you shoot for when writing code, so it was difficult
to compress.

I really struggled to find a different method to accomplish
this task in a similar way without radically altering the
build of my method (even though there likely is one. In the end
I decided to cut a bit of code by using the ternary operator
and altering the how the groups were divided to make
the process of division more resistant to changes in the number
of students.

Did you learn any new Ruby methods?
None that I used in the end but I did read quite a bit on
Enumerable#chunk and it looks quite useful for similar division
problems in the future. Also, I don't think I've actually used
Array#slice! before in DBC so it was good to put it to use.
	
=end