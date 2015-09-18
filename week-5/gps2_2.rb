#pseudocode

=begin
DEFine method for new list
create a hash
END method

DEF method for adding new quantities(list, item, quantity)
Add item and quantity to list
END

DEF method for removing quantity(list, item)
Remove item from list
END

DEF method update quantities for items(list, item, new_quantity)
Update list so that new quantity replaces old quantity
END

DEF method print list(list)
Print list as string
END

=end


#Release 2

def new_list
  @list = Hash.new
end

def add_item(item, quantity)
  @list[item] = quantity
end

def remove_item(item)
  @list.delete(item)
end

def update_quantity(item, new_quantity)
  @list[item] = new_quantity
end

def print_list
  p @list
end

#new_list

#add_item("apple", "qty: 2")
#update_quantity("apple", "qty: 4")
#print_list

# remove_item("apple")
#add_item("lemonade", "qty: 2")
#print_list

#Refactor

def new_list_2
  groceries = Hash.new
end

def add_item_2(list, item, quantity)
  list[item] = quantity
end

def remove_item_2(list, item)
  list.delete(item)
end

def update_quantity_2(list, item, new_quantity)
  list[item] = new_quantity
end

def print_list_2(list)
  p list
end


my_groceries = new_list_2
add_item_2(my_groceries, "lemonade", "qty: 2")
add_item_2(my_groceries, "tomatoes", "qty: 3")
add_item_2(my_groceries, "onions", "qty: 1")
add_item_2(my_groceries, "ice cream", "qty: 4")
remove_item_2(my_groceries, "lemonade")
update_quantity_2(my_groceries, "ice cream", "qty: 1")
print_list_2(my_groceries)



=begin
  
What did you learn about pseudocode from working on this challenge?
As always, making your pseudocode explicit and detailed helps a lot when
you are actually implementing the code.

What are the tradeoffs of using Arrays and Hashes for this challenge?
We decided to use a hash in this challenge so we could easily access
the quantity by inputing the list item.

Had we gone with arrays we would have needed to link two lists
together or, more implausibly, create one list which contains both
items and quantities and withdraw information from it.

The biggest upside to going with the hash is that when needing to
remove an item, that each item was unique. This means that when
calling a specific item you didn't have to refer to it by location
but could merely pass in the name.

What does a method return?
A method returns whatever you assign it to return.
That could be whatever the last line of executable code is inside
the method or varioius arms of a conditional statement.

What kind of things can you pass into methods as arguments?
You can pass in any kind of object as parameters for a method,
including other methods.

How can you pass information between methods?
As with most things in Ruby, there is more than one way to do this.
One way to do so would be to create instance variables and have
each method refer to that instance variable. 

Another way to do so would be to create a variable outside of a method
and assign it to what a different method returns. When calling a
method you could then refer to this new variable which would have
the contents of the original method.

What concepts were solidified in this challenge, and what concepts
are still confusing?
Passing methods along without a class structure is not something
I've had much practice with in the last severel months and it was
very useful to get a chance to do so. I could definitely use some
more practice doing so.
=end