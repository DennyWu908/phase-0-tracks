var colors = ["red", "blue", "green", "yellow"];

var horses = ["clyde", "shetland", "ed", "palomino"];

colors.push("orange");

horses.push("joe");

function horse_colors(array1, array2) {
	var colored_horses = {};
	for (var i = 0; i < array1.length; i++) {
		colored_horses[array1[i]] = array2[i];
	}
	return colored_horses;
}

console.log(horse_colors(horses, colors));

function Car(color, top_speed, is_clean) {
  console.log("a new car:", this);
  
  this.color = color;
  this.top_speed = top_speed;
  this.is_clean = is_clean;
  this.ignition = function ignition() { console.log("The car is now running.") };
  
  console.log("Car has been initialized");
}

var newCar1 = new Car("red", 140, true);
console.log(newCar1);
newCar1.ignition();

var newCar2 = new Car("green", 130, false);
console.log(newCar2);
newCar2.ignition();

var newCar3 = new Car("blue", 160, true);
console.log(newCar3);
newCar3.ignition();