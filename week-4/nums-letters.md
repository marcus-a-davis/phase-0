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

```ruby
puts 24 * 365
puts 60 * 24 * 365 * 10
```