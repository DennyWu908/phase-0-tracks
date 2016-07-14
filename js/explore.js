// This function will require a loop. To a degree, I will base it on the loop from Release 3.

// Try to loop backwards, using the length of the string as a starting point.

// Try to add each letter of the string together afterwards.

function backw(word) {
	var str = word
	var reversedWord = ''
	for (var i = word.length - 1; i >= 0; i--)
		reversedWord += str[i];
		return reversedWord
}

console.log(backw("hello"))