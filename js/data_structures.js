// r-1
color_array = ["blue", "red", "orange", "yellow"];
horse_array = ["Johnny", "Matey", "Freddy", "Baby"];

color_array.push("radiant purple");
horse_array.push("Joey");

// r-2
paired_hash = {}

for (var i = color_array.length - 1; i >= 0; i--) {
  paired_hash[horse_array[i]] = color_array[i]
};

// Driver
console.log(paired_hash)

///////////////////////////// r-3 /////////////////////////////
// Horses are great, but times are a-changin', and we need to add an option for faster transportation that we can create with an assembly line. At the bottom of your data_structures.js file, write a constructor function for a car. Give it a few different properties of various data types, including at least one function. Demonstrate that your function works by creating a few cars with it.
function Car(name, speed, isFast) {
  // console.log("Our New Car: ", this);

  this.name = name; // this. is similar to @attributes.
  this.speed = speed; 
  this.isFast = isFast;
  this.accelerate = function() { console.log("VROOM VROOM!"); };
  console.log("CAR BUILT!");
  console.log("----------");
}

console.log("> Constructing Car.");
var car_corvette = new Car("Corvette", 180, true);
console.log(car_corvette);
console.log("Our Car can accelerate! ");
car_corvette.accelerate();

/// Notes:
// 1. If you wanted to loop through the keys and values of an object, how would you do that? (There are a few ways to accomplish this, and some gotchas that can happen depending on your approach.)
  // You could use:
  /*
    for (var prop in variable_name) {
        if (!variable_name.hasOwnProperty(prop)) {
            //The current property is not a direct property of variable_name
            continue;
        }
        //Do your logic with the property here
    }
  */

// 2. Are there advantages to using constructor functions to create objects? Disadvantages? 
  // 'I mostly use objects because of their simplicity. But whenever I have to abstract away things and reuse again and again, I make a Factory to deliver same type of objects, that way I get things for free with re-usability.'