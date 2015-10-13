// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.


$(document).ready(function(){

//RELEASE 0:
  //link the image
  $('#bobolink').prev().html("Bobolinks Mascot")

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

 
//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body');


//RELEASE 3:
  // Add code here to modify the css and html of DOM elements
$('h1').css('color', 'red').css('border', '3px solid black').css('visibility', "visible");


//RELEASE 4: Event Listener
  // Add the code for the event listener here
  	
   $('img').mouseenter(function() {
    $(this).attr('src', 'http://images.fineartamerica.com/images-medium-large-5/bobolink-anonymous.jpg')
    .animate({height: "150px"}, 500)
   }).css({"border": "5px solid black"}).attr('src', 'http://images.fineartamerica.com/images-medium-large-5/bobolink-anonymous.jpg')
   .animate({borderWidth: '30px'}, 1000)
//RELEASE 5: Experiment on your own

	




})  // end of the document.ready function: do not remove or write DOM manipulation below this.

/*
What is jQuery? What does jQuery do for you?
It's a JavaScript library that allows simpler scripting of HTML and
CSS within JavaScript. Centrally it functions as a DOM manipulation
library. 



What did you learn about the DOM while working on this challenge?

Specifically, I learned a bit about manipulating elements of siblings.
I hadn't previously used prev() (that I can remember) to select an
element based on an element that comes directly following it.  

*/