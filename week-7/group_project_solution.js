var total = 0;

function sum(array) {
	for (var count = 0; count < array.length; count++) {
		total += array[count];
	}
	return total
}





function mean(array) {
	total = sum(array);
	var mean = (total/array.length);
	return mean;
}


function median(array) {
	var sorter = array.sort();
	var middleValue = sorter[Math.round((array.length-1)/2)]
	return middleValue
}


