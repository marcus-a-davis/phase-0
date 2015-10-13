

//----------- Pseudocode -----------//


/*
Inputs: integer
Output: true or false

1.  IF length of card number is not 16
	  throw error
2.  With valid input turn number into string
3.  Reverse string
4.  Split string, push elements into an array
5.  Turn elements into integers
6.  Starting with second element, double every other element
7.  IF an element > 9
	  turn element into string
	  split string
	  turn characters back to integers
	  insert integers back into array
8.  Add all elements in array together
9.  IF total is a multiple of 10
	  return true
10. ELSE
	  return false

*/

//----------- Initial Solution -----------//
/*
function validate(card_number) {
	check_length(card_number);
	reversed = num_to_reverse_string(card_number);

	string_array = reversed.split("");
	// console.log(array);
	num_array = []

	for (var letter in string_array) {
		num_array.push(parseInt(string_array[letter]));
	}
	// console.log(num_array);

	for (var index = 0; index < num_array.length; index++) {
		if((index+1) % 2 == 0) {
			num_array[index] = num_array[index] * 2;

		}
	}

	for (var number in num_array) {
		if (num_array[number] > 9) {
			two_digits = num_array[number].toString().split("");
			num_array.splice(number,1);
			for(var digit in two_digits) {
				num_array.push(parseInt(two_digits[digit]))
				
			}
		}
	}
	// console.log(num_array);

	total = 0;
	for (var number in num_array) {
		total += num_array[number];
	}
	console.log(total);

	card_valid = false;
	if (total % 10 == 0) {
		card_valid = true
	}
	else {
		card_valid = false
	}
	console.log(card_valid);
}

function check_length(card_number) {
	// console.log(card_number.toString().length)
    if(card_number.toString().length != 16) {
    	console.log("Credit card number must be 16 digits.");
	}
}

function num_to_reverse_string(card_number) {
	return card_number.toString().split("").reverse().join("");
	// return string.reverse();
}

validate(4563960122001999)

*/






//----------- Refactored Solution -----------//

function validate(card_number) {
	check_length(card_number); // Check if card_number is 16 digits long
	reversed = card_number.toString().split("").reverse().join(""); // turn number into string and reverse

	string_array = reversed.split(""); // turn string into array
	num_array = [];

	// push string elements into new array as numbers
	for (var letter in string_array) {
		num_array.push(parseInt(string_array[letter]));
	} 

	// double every other number starting at first element
	for (var index = 0; index < num_array.length; index++) {
		if((index+1) % 2 == 0) {
			num_array[index] = num_array[index] * 2;
		}
	} 

	// split any elements > 9, push new values back into array
	for (var number in num_array) {
		if (num_array[number] > 9) {
			two_digits = num_array[number].toString().split("");
			num_array.splice(number,1);

			for(var digit in two_digits) {
				num_array.push(parseInt(two_digits[digit]));

			} //end for
		} // end if
	} // end for

	// add array values together
	total = num_array.reduce(function(total, num) {return total + num}, 0);

	// check if total is evenly divisible by 10
	(total % 10 == 0) ? card_valid = true : card_valid = false;
	console.log(card_valid);
}

function check_length(card_number) {
    if(card_number.toString().length != 16) {
    	console.log("Credit card number must be 16 digits.");
	}
}


validate(4563960122001999)



//----------- Reflection -----------//

/*

What concepts did you solidify in working on this challenge?
Manipulating strings and arrays in JavaScript.

What was the most difficult part of this challenge?
The hardest part of this challenge was deciding how to structure it.
This is the type of problem that could be handled well by making every
small section of code a standalone function, though I decided against doing
it that way. I instead chose to make it all part of one larger function
that simply passes variables of the input at various stages.

Did you solve the problem in a new way this time?
No. This is a functionally equivalent way to how I solved it previously.

Was your pseudocode different from the Ruby version? What was the same
and what was different?
Not really. My pseudocode this time was more clear than previously but
expressed the same concepts.

*/