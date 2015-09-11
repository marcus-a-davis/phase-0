puts  "What's your first name?"
first = gets.chomp

puts  "What's your middle name?"
middle = gets.chomp

puts  "What's your last name?"
last = gets.chomp

puts "Hello " + first + " " + middle + " " + last



puts "What's your favorite number?"

fav_num = gets.chomp.to_i

new_num = fav_num + 1

puts "Your favorite number should be: " + new_num.to_s