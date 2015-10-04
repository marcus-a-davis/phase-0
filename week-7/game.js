 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: 
// Overall mission: Escape the zombie apocalypse
// Goals: Avoid the zombies, stay alive
// Characters: survivor, zombie,
// Objects: survivor(position, stamina), zombie(position)
// Functions: runUp, runDown, runForward, runBack, rest, stalk

// Pseudocode
// Create a survivor object that will have stamina, position, and alive
//		properties
// Add functions to survivor for running up, down, forward, back and
//		resting
// Create a zombie object, with a position of 5 units away from
// 	survivor
// Move the survivor in a direction
// Each time the survivor moves, the zombie moves half the distance in
// 		the same direction
// If the survivor is in the same position as the zombie, game over.
// 		the zombie eats the survivor and the survivor dies
//  

// Initial Code

// var zombies = {
// 	posX: 0,
// 	posY: 10
// }

// var survivor = {
// 	posX: 0,
// 	posY: 0,
// 	stamina: 100,
// 	alive: true,
// 	run: function(direction) {
// 		// var counter = 0;
// 		if(survivor.stamina <= 0) {

// 			survivor.posX += 0;
// 			survivor.posY += 0;
// 			survivor.stamina += 10;
// 			console.log("You are out of stamina. You must rest.");
// 			console.log("*You begin to rest*")
// 			zombies.posX = survivor.posX;
// 			zombies.posY = survivor.posY;
// 			// continue;
// 		}
// 		else {

// 			if(direction === 'forward') {
// 				survivor.posX += 20;
// 				survivor.stamina -= 50;
// 				zombies.posX +=10;
// 			}
// 			else if(direction === 'back') {
// 				survivor.posX -= 20;
// 				survivor.stamina -= 50;
// 				zombies.posX -=10;
// 			}
// 			else if(direction === 'up') {
// 				survivor.posY += 20;
// 				survivor.stamina -= 50;
// 				zombies.posY +=10;
// 			}
// 			else if(direction === 'down') {
// 				survivor.posY -= 20;
// 				survivor.stamina -= 50;
// 				zombies.posY -=10;
// 			}
// 			else if(direction === 'rest') {
// 				if (survivor.stamina >= 90) {
// 					console.log("*You begin to rest*")
// 					survivor.stamina = 100;
// 					zombies.posX = survivor.posX;
// 				    zombies.posY = survivor.posY;
// 				}
// 				else {
// 				  console.log("*You begin to rest*")
// 				  survivor.stamina += 10;
// 				  zombies.posX = survivor.posX;
// 				  zombies.posY = survivor.posY;
// 				}
				
// 			}
// 		}

// 		console.log("Your position is " + survivor.posX
// 	+ "," + survivor.posY + ".\n" +
// 	"Your stamina is " + survivor.stamina)

// 	console.log("Zombies are in position " + zombies.posX
// 	+ "," + zombies.posY)

// 	  // if (survivor.alive === true) {
// 	  	if (survivor.posX === zombies.posX && survivor.posY === zombies.posY) {
// 		  survivor.alive = false;
// 		  console.log("You have been eaten by zombies.\n");
// 		}
// 	    else {
// 		  console.log("You are still alive... for now.\n");
// 	    }
// 	  // else {
// 	  // 	  console.log("Zombies are picking over your remains.\n")
// 	  //   }
// 	  // }

// 	  if (survivor.alive === false) {
// 	  	process.exit()
// 	  }
// 	}
// }


// survivor.run("back");
// survivor.run("forward");
// survivor.run("up");
// survivor.run("rest");
// survivor.run("rest");


// Refactored Code

// Define zombie
var zombies = {
	posX: 0,
	posY: 10
}

// Define survivor
var survivor = {
	posX: 0,
	posY: 0,
	stamina: 100,
	alive: true,
	run: function(direction) {
		
		if(survivor.stamina <= 0) {
			console.log("You are out of stamina. You must rest.");
			rest()
		}
		else {

			if(direction === 'forward') {
				survivor.posX += 20;
				survivor.stamina -= 50;
				zombies.posX +=10;
			}
			else if(direction === 'back') {
				survivor.posX -= 20;
				survivor.stamina -= 50;
				zombies.posX -=10;
			}
			else if(direction === 'up') {
				survivor.posY += 20;
				survivor.stamina -= 50;
				zombies.posY +=10;
			}
			else if(direction === 'down') {
				survivor.posY -= 20;
				survivor.stamina -= 50;
				zombies.posY -=10;
			}
			else if(direction === 'rest') {
				if (survivor.stamina >= 90) {
					survivor.stamina = 100;
					rest()
				}
				else {
				  survivor.stamina += 10;
				  rest()
				  
				}
				
			}
		}

	status()
		
	}
}

function rest() {
	console.log("*You begin to rest*")
	zombies.posX = survivor.posX;
	zombies.posY = survivor.posY;
}

function status() {
	console.log("Your position is " + survivor.posX
		+ "," + survivor.posY + ".\n" +
		"Your stamina is " + survivor.stamina)

	console.log("Zombies are in position " + zombies.posX
		+ "," + zombies.posY)

		 
	if (survivor.posX === zombies.posX && survivor.posY === zombies.posY) {
			survivor.alive = false;
			console.log("You have been eaten by zombies.\n");
		}
	else {
			console.log("You are still alive... for now.\n");
		}

	if (survivor.alive === false) {
	  	process.exit()
	}
}

survivor.run("back");
survivor.run("forward");
survivor.run("up");
survivor.run("rest");
survivor.run("rest");





// Reflection

/*
What was the most difficult part of this challenge?
Figuring out how to pivot actions based on changes in my stamina
attribute before alternating actions based on what input is entered
was challenging. It seems simple, because this theoretically could
just be a nested if/else conditional but because the program, as
set up, was terminating after checking if the player had enough
stamina, it was more tricky. The solution ended up being rather
simple after all, as I just input the function I wanted to run
inside the check on stamina.

What did you learn about creating objects and functions that
interact with one another?
It was useful to get objects to communicate with each other by
checking the properties of others.

More broadly, I seem to be learning that programming knowledge 
definitely carries from one language to others as my experience,
limited it is, working in Java has been super helpful understanding
the way creating functions and objects works in JavaScript.

Did you learn about any new built-in methods you could use in your
refactored solution? If so, what were they and how do they work?
I called process.exit() to exit the program when the game is over. As
its name implies, process.exit() terminates whatever the current code
is running.

How can you access and manipulate properties of objects?
You can access properties in JavaScript by using "object.property"
notation. After doing so you can use literal assignment
to change (or create) a value for that property in this manner:

object.property = 21;

You can also manipulate properties with constructors like this:

function myObject(prop1, prop2) {
	prop1: "fast",
	prop2: 34
}

*/