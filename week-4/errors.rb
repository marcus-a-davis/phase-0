# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    8
# 3. What is the type of error message?
#    syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected '=', expecting end of input
# 5. Where is the error in the code?
#    After the equals sign
# 6. Why did the interpreter give you this error?
#    In Ruby variables have to be the first element identified.
#    In other words, you would have needed to write that code as
#    follows: cartmans_phrase = "Screw you guys" + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------
=begin
def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end
=end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    errors.rb
# 2. What is the line number where the error occurs?
#    172
# 3. What is the type of error message?
#    syntax error
# 4. What additional information does the interpreter provide about this type of error?
#    unexpected end of input, expecting keyword_end
# 5. Where is the error in the code?
#    The error is triggered after the last bit of code in the file.
#    However, the mistake in the code is that that while loop is not
#    closed with "end" so that the cartman_hates method is not closed.
# 6. Why did the interpreter give you this error?
#    Because there is one less "end" than necessary to close out the
#    method, the program looks indefinitely for it. Because there
#    aren't any in the rest of the program, it causes an error.
#

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#    56
# 2. What is the type of error message?
#    NameError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined local variable or method 'south_park' for main:Object
#    
# 4. Where is the error in the code?
#    Line 56 when south_park is attempted to be called
# 5. Why did the interpreter give you this error?
#    'south_park' doesn't exist as a method or variable so calling
#    causes an error.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#    73

# 2. What is the type of error message?
#    NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#    undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
#    Line 73 when cartman() is attempted to be called.
# 5. Why did the interpreter give you this error?
#    cartman() is not defined prior to being attempted to being
#    called.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#    90
# 2. What is the type of error message?
#    ArgumentError 
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
#    Line 94 whencartmans_phrase is called with a parameter. 
# 5. Why did the interpreter give you this error?
#    cartmans_phrase is called with a parameter when it is not defined
#    with one.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

# cartman_says

# 1. What is the line number where the error occurs?
#    110
# 2. What is the type of error message?
#    ArgumentError 
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#    cartman_says is called on line 114 without a parameter
# 5. Why did the interpreter give you this error?
#    If you define a method as accepting a parameter, you must
#    input a parameter when you call it (unless you explicitly define
#	 the method as accepting none or more parameters).



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#    133
# 2. What is the type of error message?
#    ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#    wrong number of arguments (1 for 2) 
# 4. Where is the error in the code?
#    Line 137 when cartmans_lie is called
# 5. Why did the interpreter give you this error?
#    cartmans_lie is defined with two parameters but only called with
#    one.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#    153
# 2. What is the type of error message?
#    TypeError
# 3. What additional information does the interpreter provide about this type of error?
#    String can't be coerced into Fixnum
# 4. Where is the error in the code?
#    On line 153 at the "*" symbol
# 5. Why did the interpreter give you this error?
#    You can't force a String to behave like a number in Ruby.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#    168
# 2. What is the type of error message?
#    ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#    divided by 0
# 4. Where is the error in the code?
#    In the denominator when you attempt to divide by zero
# 5. Why did the interpreter give you this error?
#    Ruby is not prebuilt with a solution to dividing by zero
#    therefore to do so throws an error.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#    185
# 2. What is the type of error message?
#    LoadError
# 3. What additional information does the interpreter provide about this type of error?
#    cannot load such file --
#    /home/marcus/phase-0/week-4/cartmans_essay.md
# 4. Where is the error in the code?
#    The location of where cartmans_essay.md is attempted to be loaded
#    on line 185.
# 5. Why did the interpreter give you this error?
#    The file "cartmans_essay.md" does not exist so cannot be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin
	
Which error was the most difficult to read?
It was pretty obvious what the error was with each of the pieces
of code. The hardest though was probably the TypeError caused
by attempting to multiply 5 by a String.

How did you figure out what the issue with the error was?
I realized the issue was the order of the operation. You can add
or multiply a String by a number (because the number will be
changed into a string) but you can't add or multiply a number
by a String because a String can't be coerced into a number.  

Were you able to determine why each error message happened based on the
code?
Yes.

When you encounter errors in your future code, what process will you
follow to help you debug?
Reading the error message begins with locating the error. So first,
learn where the error is. Second, learn what type of error it is.
Then, attempt to fix the error based on this information.
	
end