// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var numMe = 5;
console.log(numMe % 2)

// Favorite food program

// do {
//   var food = prompt("What is your favorite food?");
// } while (!food);
// console.log(food);
// alert("Hey! That's my favorite too!")



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var triangle = "";
var counter = 0;
while (counter < 7) {
	triangle += "#";
	console.log(triangle);
	counter += 1;
}


var countMe = 1;
var fizz = "Fizz";
var buzz = "Buzz";
while (countMe <= 100) {
	if (countMe % 3 == 0 && countMe % 5 == 0) {
		console.log(fizz + buzz);
		countMe ++
	}
	else if (countMe % 3 == 0) {
		console.log(fizz);
		countMe ++
	}
	else if (countMe % 5 == 0) {
		console.log(buzz);		
		countMe ++
	}
	else {
		console.log(countMe);
		countMe ++
	}
}

var board = "";
var size = 10;
for (var outerCount = 0; outerCount < size; outerCount++) {
	for (var innerCount = 0; innerCount < size; innerCount++) {
		if ((outerCount + innerCount) % 2 == 0) {
			board += " ";
		}
		else {
			board += "#";
		}
	}
	board += "\n";
}

console.log(board)

// Functions

// Complete the `minimum` exercise.
function min(a, b) {
	if (a < b) {
		console.log(a)
	}
	else {
		console.log(b)
	}
}
min(3,-5)

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var random = ["Marcus", 26, ["cereal", "hummus", "kimchi"], "I use random words and phrases from languages I don't speak."]