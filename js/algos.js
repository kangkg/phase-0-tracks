// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.
function shares_pair?(first_obj, second_obj) {
  
  return false // if no matching pairs
}


function find_longest_phrase(array_of_strings) {
  longest_phrase = array_of_strings[0] // set a default longest_phrase value
  for (var i = array_of_strings.length - 1; i >= 0; i--) {
    if (array_of_strings[i].length > longest_phrase.length) {
      longest_phrase = array_of_strings[i];
      // console.log(longest_phrase); // debugging
    }
  };
  return longest_phrase
}

// Driver code:

// Release-0
console.log("The Longest Phrase was: " + find_longest_phrase(["long phrase","longest phrase","longer phrase"]))
console.log("The Longest Phrase was: " + find_longest_phrase(["WOWWWWWWW","NOO OOO OOO OO","WHYYYY MEEEEEEEEE","WUTTTT","OMG"]))

// release-1