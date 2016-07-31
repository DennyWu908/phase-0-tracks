console.log("This string is to confirm the script is running.");

var verdant = document.getElementById("releases");
verdant.style.border = "5px solid green";

function italicize (event) {
	console.log("The click event is printed below.");
	console.log(event);
	event.target.style.border = "10px solid blue";
}

var lower_line = document.getElementById("line-two");
lower_line.addEventListener("mouseover", italicize);