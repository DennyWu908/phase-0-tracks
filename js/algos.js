// This is the code for Release 0.

var phrases = ["long phrase","longest phrase","longer phrase"];

var verbs = ["is", "was", "been"]

var random = ["soap", "notepad", "leaf"]

function phrase_selector(array) {
	for (var i = 0; i < array.length; i++) {
		console.log(array[i].length);
	}
	console.log(Math.max(array))
}

console.log(phrase_selector(phrases));

console.log(phrase_selector(verbs));

console.log(phrase_selector(random));

// This is the code for Release 1.

var zoo = {'eagle': 'gray', 'dog': 'gold', 'antelope': 'tan'}

var shelf = {'chopsticks': 'tan', 'forks': 'silver', 'napkins': 'white'}

// I am redoing this assignment. Below is the new code for Release 0. ------------------------------------------------------------------------

var phrases = ["long phrase","longest phrase","longer phrase"];

var verbs = ["is", "was", "been"]

var random = ["soap", "notepad", "leaf"]

function phrase_selector(array) {
	printed_phrase = array[0];
// Set phrase to be returned. Set default value as first element of array.
	for (var i = 0; i < array.length; i++) {
		(array[i].length);
// Iterate through an array passed to the function. Measure the length of each string in the array.
			if (array[i].length > printed_phrase.length) {
				printed_phrase = array[i];
			}
// Compare numerical length of the first element in the array to that of the other elements.
// Replace value of returned phrase if any of the successive elements has a larger length.
	}
	return printed_phrase;
}

console.log(phrase_selector(phrases));

console.log(phrase_selector(verbs));

console.log(phrase_selector(random));

// Below is the new code for Release 1.

var zoo = {'eagle': 'gray', 'bird': 'yellow', 'antelope': 'tan'};

var shelf = {'bird': 'yellow', 'forks': 'silver', 'napkins': 'white'};

var zoo2 = {'eagle': 'gray', 'bird': 'blue', 'antelope': 'tan'};

var shelf2 = {'bird': 'red', 'forks': 'silver', 'napkins': 'white'};

function matcher(hash1, hash2) {
	for (var key in hash1){
// Iterate through the keys in one object.
		if (key in hash2) {
// Confirm that both objects have matching keys.
			if (hash1[key] == hash2[key]) {
				return true;
// Confirm that the values of the matching keys are also identical. If so, return true.
			}
		}
	}
	return false;
// If neither the keys or the values of the objects match, return false.
}

console.log(matcher(zoo, shelf));

console.log(matcher(zoo2, shelf2));

// Below is the new code for Release 2.

function random_string() {
	var alphabet = 'abcdefghijklmnopqrstuvwxyz';
	var new_string = '';
// Create an empty string and a list of characters to draw from.
	string_length = (Math.floor((Math.random() * 10) + 1));
// Generate a random number to serve as the length of the string.
	for (var i = 0; i < string_length; i++) {
		new_string += alphabet.charAt(Math.floor(Math.random() * 10));
// Based on the length, generate random characters.
	}
	return new_string;
// Add random characters to empty string and print it.
}

function array_generator(number_elements) {
	var new_array = [];
// Create empty array to be filled with strings.
	for (var i = 0; i < number_elements; i++) {
			new_array.push(random_string());
// Call random_string function to generate strings of random length, consisting of random characters.
// Add strings to empty array.
	}
	return(new_array);
// Print array after it has been filled with strings.
}

console.log(array_generator(3));

function string_selector(results_requested) {
	for (var i = 0; i < results_requested; i++) {
		console.log(phrase_selector(array_generator(Math.floor((Math.random() * 10) + 1))));
// Call array_generator method to generate arrays consisting of strings. Call phrase_selector to print the longest string from each array.
// The number of arrays and strings printed by the array is determined by the argument.
	}
}

string_selector(10);