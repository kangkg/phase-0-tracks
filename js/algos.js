// In algos.js, write a function that takes an array of words or phrases and returns the longest word or phrase in the array. So if we gave your function the array of ["long phrase","longest phrase","longer phrase"], it would return "longest phrase". This is a logical reasoning challenge, so try to reason through this based on what you already know, rather than Googling the fanciest solution or looking up built-in sorting functions. Note that "some string".length will do what you expect in JS.
// Add driver code that tests your function on a few arrays.





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

console.log("The Longest Phrase was: " + find_longest_phrase(["long phrase","longest phrase","longer phrase"]))
console.log("The Longest Phrase was: " + find_longest_phrase(["WOWWWWWWW","NOO OOO OOO OO","WHYYYY MEEEEEEEEE","WUTTTT","OMG"]))