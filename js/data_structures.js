var colors = ["red", "blue", "green", "yellow"];

var horses = ["clyde", "shetland", "ed", "palomino"];

colors.push("orange");

horses.push("joe");

function horse_colors(array1, array2) {
	var colored_horses = {};
	for (i = 0; i < array1.length; i++) {
		colored_horses[array1[i]] = array2[i];
	}
	return colored_horses;
}

console.log(horse_colors(horses, colors));