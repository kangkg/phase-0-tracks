console.log("The script is running!");


function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);


$(document).ready(function(){ // This is to prevent any jQuery code from running before the document is finished loading (is ready).
  $("#reveal_lizard").click(function(){
      $("#lizard-photo").show();
  });

  $("#hide_lizard").click(function(){
      $("#lizard-photo").hide();
  });
   // jQuery methods go here...

});