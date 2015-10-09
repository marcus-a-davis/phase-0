// Tally Votes in JavaScript Pairing Challenge.

<<<<<<< HEAD
// I worked on this challenge with Chris Mark:
// This challenge took me 3 hours.
=======
// I worked on this challenge with:
// This challenge took me [#] hours.
>>>>>>> master

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}
<<<<<<< HEAD
// console.log("This is working");
=======

>>>>>>> master
/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
<<<<<<< HEAD
//Create a function that iterates over votes and nested objects which are students
//In the inner loop, add their vote to the correct property in vote count 
//Create a function that checks voteCount and assigns the highest number of votes for each office
=======

>>>>>>> master

// __________________________________________
// Initial Solution

<<<<<<< HEAD
// __________________________________________
// Refactored Solution
var tallyVotes = function(){
    for (var office in officers) {
      for (var name in votes) {
        if(voteCount[office][votes[name][office]]) {
          (voteCount[office][votes[name][office]]) +=1;
        }
        else {
        (voteCount[office][votes[name][office]]) = 1;
        }
      }
    }
}
tallyVotes();



function winner() {
    for (var key in voteCount) {
      var max = 0;
      for(var person in voteCount[key]) {
        if (voteCount[key][person] > max) {
          max = voteCount[key][person];
         var champion = person;
          // console.log(max);
          // console.log(champion);
        }
        
        
      }
      officers[key] = champion;
      
    }
}

winner()
=======






// __________________________________________
// Refactored Solution





>>>>>>> master

// __________________________________________
// Reflection


<<<<<<< HEAD
/*
What did you learn about iterating over nested objects in JavaScript?
Accessing the particular value in a nested array is straightforward
and similar to how such values would be accessed in Ruby. Iterating,
by contrast, was much different as the for...in syntax used was
unfamiliar. It was good to get some practice using it to 
manipulate values in different objects.

Were you able to find useful methods to help you with this?
We didn't use any methods to do this. We stuck with calling properties
by direct reference. We did, however, explore using some alternative
code to find the maximum value of a set of properties but decided
against it because it was less clear than what we had already written.

What concepts were solidified in the process of working through this
challenge?
Iterating over nested objects and manipulating the properties of
objects by reference to other objects. While I feel like we
accomplished the goal, I can definitely use much more practice with
this in JavaScript.

*/
=======



>>>>>>> master

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)