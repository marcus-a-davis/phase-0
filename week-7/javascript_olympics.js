// JavaScript Olympics

// I paired by myself on this challenge.

// This challenge took me [#] hours.


// Warm Up



// Bulk Up
function addWin(array, contest) {
	for (var counter = 0; counter < array.length; counter ++) {
		
		array[counter] = {
			win: array[counter] + " won the " + contest + "!" 
		}

		console.log(array[counter].win)
	}
}

addWin(["John", "Mary", "Alicia"], "Awesome Off")


// Jumble your words

function reverseString(stringer) {
	console.log(stringer.split("").reverse().join(""))
}

reverseString("check")

// 2,4,6,8

function isEven(number) {
	if (number % 2 == 0) {
		return number
	}
}

function evenNumbers(numArray) {
	 console.log(numArray.filter(isEven))
}

evenNumbers([2,4,3,1,6,11])

// "We built this city"

function Athlete(name, age, sport, quote) {
	this.name = name;
	this.age = age;
	this.sport = sport;
	this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29,
	"swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " is great at " + michaelPhelps.sport
	+ ".\n" + "And to (faux) quote him: '"
	+ michaelPhelps.quote + "'")



// Reflection

/*
What JavaScript knowledge did you solidify in this challenge?
It was helpful to work with manipulating data, specifically arrays,
in JavaScript because the in built functanality is very different from
that of Ruby.

Also, working with constructors was quite helpful.


What are constructor functions?

Constructors are objects created as a blueprint for instances of
an object. They are useful when you need multiple instances of an
object and each object might have different implementations of
behavior. 

How are constructors different from Ruby classes (in your research)?

Constructors in JavaScript are created in a similar way to C style
languages while Ruby classes are set up in a more linguistic fashion.
object. In JavaScript constructors are made with the following
notation:

function myMachine(speed, color) {
	this.speed = speed;
	this.color = color;
}

In this example, the properties speed and color are defined with
"this." notation which is required in constructors. By contrast here
is the same functionality in Ruby:

class myMachine
	def initialize(speed, color)
		@speed = speed
		@color = color
	end
end


*/