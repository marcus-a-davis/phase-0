**What does puts do?**
Puts outputs to the terminal. To put that another way, it writes on
to the terminal whatever comes after it. So if you write "puts tiger"
then "tiger" will show up in the terminal.

**What is an integer? What is a float?**
An integer is any number in Ruby that doesn't have a decimal place. By
contrast, a float (or floating point number) is any number with a decimal
point. So 3, 2, and -127 would all be integers in Ruby and 7.6, 1.1, and
3.14159 are all floats in Ruby. 


**What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?**
Integer division always returns integers and floats division always
returns floats. More simply, integer division always rounds down and shows no remainder (you can get the remainder of any two integers by using the modulo operator "%"). By contrast, floating division returns
mathematically accurate answers to division problems where the smaller
number doesn't fit perfectly into the larger number.

So an example is with integers 13/2 is 6 but with floats 13.0/2.0 is 6.5.

**Learning to Program examples**

```ruby
puts 24 * 365
puts 60 * 24 * 365 * 10
```

[Defining Variables](https://github.com/marcus-a-davis/phase-0/blob/master/week-4/defining-variables.rb "Defining Variables")
[Simple String Methods](https://github.com/marcus-a-davis/phase-0/blob/master/week-4/simple-string.rb "Simple String Methods")
[Basic Math](https://github.com/marcus-a-davis/phase-0/blob/master/week-4/basic-math.rb "Basic Math")

**How does Ruby handle addition, subtraction, multiplication, and division of numbers?**
In Ruby you can add, subtract, multiply and divide numbers using +,
-, *, and / respectively. You


**What is the difference between integers and floats?**
An integer is any number in Ruby that doesn't have a decimal place. By
contrast, a float (or floating point number) is any number with a decimal
point. So 3, 2, and -127 would all be integers in Ruby and 7.6, 1.1, and
3.14159 are all floats in Ruby. 


**What is the difference between integer and float division?**
Integer division always returns integers and floats division always
returns floats. More simply, integer division always rounds down and shows no remainder (you can get the remainder of any two integers by using the modulo operator "%"). By contrast, floating division returns
mathematically accurate answers to division problems where the smaller
number doesn't fit perfectly into the larger number.

So an example is with integers 13/2 is 6 but with floats 13.0/2.0 is 6.5.

**What are strings? Why and when would you use them?**
Strings are groups of letters in a program. You can use them to assign
text to variables so that you can display them, or as the representation
of an email address, name, etc. that a user enters on a page.


**What are local variables? Why and when would you use them?**
Local variables are a way to store data in your computer's memory so you
can use that data again later. They begin with a lowercase letter or
underscore and have a scope dependent on where they are placed in a class,
module or method.

**How was this challenge? Did you get a good review of some of the basics?**
This challenge was very simple but it had been a while since I'd
explicitly defined some of these terms. Also, it's nice to get back into
the habit of using test-driven development since it's been so long (a
couple months) since I'd regularly been doing so.