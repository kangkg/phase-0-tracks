
// r-0
function find_longest_phrase(array_of_strings) {
  var longest_phrase = array_of_strings[0] // set a default longest_phrase value
  for (var i = array_of_strings.length - 1; i >= 0; i--) {
    if (array_of_strings[i].length > longest_phrase.length) {
      longest_phrase = array_of_strings[i];
      // console.log(longest_phrase); // debugging
    }
  };
  return longest_phrase
}

//r-1
// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.

function share_one_pair(object_one, object_two) {
  for (var object_property in object_two) {
    console.log("..."); // debugging
    if (object_one[object_property] == object_two[object_property] ) {
      return true;
      // console.log(); // debugging
    }
  };
  return false // no matches found
}

//r2
  // Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
  // Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

function create_multiple_strings_of_this_number(length) {
  var new_array = []
  for (var i = length; i >= 0; i--) {
    var num_of_letters = 1 + Math.floor(Math.random() * 10)
    var new_word = make_random_word(num_of_letters)
    new_array[i] = new_word
  };
  return new_array// array of given length
}

// for use in r2
function make_random_word(num_of_letters)
{
    var new_word = "";
    var possible_letters = "abcdefghijklmnopqrstuvwxyz";
    for( var i=0; i < num_of_letters; i++ )
        new_word += possible_letters.charAt(Math.floor(Math.random() * possible_letters.length));
    return new_word;
}


/////////// Driver code:
//r0
console.log("The Longest Phrase was: " + find_longest_phrase(["long phrase","longest phrase","longer phrase"]))
console.log("The Longest Phrase was: " + find_longest_phrase(["WOWWWWWWW","NOO OOO OOO OO","WHYYYY MEEEEEEEEE","WUTTTT","OMG"]))

//r1
obj_1 = {name: "Steven", age: 524}
obj_2 = {name: "Tamir", age: 54}
console.log(share_one_pair(obj_1, obj_2))
obj_1 = {name: "Steven", age: 54}
obj_2 = {name: "Tamir", age: 54}
console.log(share_one_pair(obj_1, obj_2))

//r2
for (var i = 9; i >= 0; i--) {
  random_array = create_multiple_strings_of_this_number(3)
  console.log()
  console.log(random_array)
  console.log('Longest: ' + find_longest_phrase(random_array) )
}
