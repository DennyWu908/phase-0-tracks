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