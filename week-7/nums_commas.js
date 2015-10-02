// I worked on this with Farman Pirzada
//  for 2 hours


/*
Create a function separateComma. It should accept an integer as an argument and return a comma-separated integer as a string.

separateComma(1569743) == "1,569,743"

Pseudocode

convert number into a string
reverse string

create a counter equal to zero

while counter is less than length of string

if string is less than 4 characters
    return reversed string
    
else
  Add , in string[3]
  remove up to string[3] from string push to comma_string 
  increment counter by 3 
    
end if statement

end while statement

reverse commma_string
return Concatenate string & comma_string
*/

// function separateComma(number){ 
//   var c = 0; 
//   var string = number.toString().split("").reverse().join("");
//   var comma_adder;
//   var reverser;

//   for (var c = 3; c < string.length; c+= 4) {

    
//     if (string.length < 4) {
//      console.log(string.split("").reverse().join(""));
//     }
//     else {

//       string = string.substr(0, c).concat(",") + string.substr(c);
//       reverser = string.split("").reverse().join("");
      

//     };
//   };
//   return reverser;
// };

// console.log(separateComma(1442214)); 


function separateComma(number){ 
  var string = number.toString().split("").reverse().join("");
  var reverser;
  for (var c = 3; c < string.length; c+= 4) {
    if (string.length < 4) {
     console.log(string.split("").reverse().join(""));
    }
    else {
      string = string.substr(0, c).concat(",") + string.substr(c);
      reverser = string.split("").reverse().join(""); 
    };
  };
  return reverser;
};

console.log(separateComma(1442214));


/*
What was it like to approach the problem from the perspective of
JavaScript? Did you approach the problem differently?

It was great to work on this in another language. The basic logic
of what we did was similar to how I previously solved the problem
but so much is different about syntax that building it felt very
different.

What did you learn about iterating over arrays in JavaScript?

We use a method of iterating over arrays that was very similar to those
I was already familiar with (from my limited experiece with Java).
Looping with the iteration named, assigned and incremented in the
declaration is a depature from the style I often used in Ruby
(though Ruby allows you to write methods like this if you so
choose). 

What was different about solving this problem in JavaScript?

The different way to assign values to variables, and differences in
built in methods to manipulate strings, made solving this in
JavaScript signigficantly different.

Because there was no built in way to reverse a string, each time we
wanted to reverse the order of the string we had to turn it into an
array of characters first before reversing it and rejoining it as
a string. Also, an issue that gave us significant problems, we had to
use literal assignment to override the value of our string in the if
else conditional. Our string wouldn't hold its value throughout
instances of the for loop unless we explicitly defined it as the
a value belonging to the original string (instead of assigning it
as a value of a different variable).

What built-in methods did you find to incorporate in your refactored
solution?

We used .substr() (which calls a specific index in a string), reverse()
(which reverses an array), and join (which combines an array into a
single string).

*/