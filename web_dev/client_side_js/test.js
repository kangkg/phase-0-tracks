// given script example:
console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}


// More functionality for the lizard:
var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

function hidePhoto(){
  console.log("hide photo! here's the click event:");
  photo.hidden = true;
}

function showPhoto(){
  console.log("show photo! here's the click event:");
  photo.hidden = false;
}

var hide_button = document.getElementById("hideit");
hide_button.addEventListener("click", hidePhoto);

var show_button = document.getElementById("showit");
show_button.addEventListener("click", showPhoto);


// create a button for adding more chameleons:
var newbutton = document.createElement("button");
newbutton.appendChild(document.createTextNode("Add One More!"));
document.getElementById("about-my-pet").appendChild(newbutton);
newbutton.id = "addPhoto";

// add images of a chameleon over and over with this function!
function add_image() {
  //dynamically add an image and set its attribute
  var img=document.createElement("img");
  img.src="chameleon.png"
  img.id="picture"

  img.setAttribute('height', 'auto');
  img.setAttribute('width', '225px')


  var foo = document.getElementById("test");
  foo.appendChild(img);
}
var add_button = document.getElementById("addPhoto");
add_button.addEventListener("click", add_image);


// another test of JS: change UL but how do i change all instances of UL without a [0]?
  var list = document.getElementsByTagName('UL')[0];
  list.style.color = "blue";


