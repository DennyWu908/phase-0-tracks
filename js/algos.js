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