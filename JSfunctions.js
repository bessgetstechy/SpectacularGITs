function showAddGameForm() {
  var x = document.getElementById("addGameForm");
  if (x.style.display === "none") {
    x.style.display = "block";
    document.getElementById('button1').innerHTML = 'Hide Form';
  } else {
    x.style.display = "none";
    document.getElementById('button1').innerHTML = 'Show Form';
  }
}

function addGameSearch() {
  var a = document.getElementById("addGameSearch");
  if (a.style.display === "none") {
    a.style.display = "block";
    document.getElementById('button2').innerHTML = 'Hide Search';
  } else {
    a.style.display = "none";
    document.getElementById('button2').innerHTML = 'Show Search';
  }
}

function showEditGameForm() {
  var x = document.getElementById("editGameForm");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}

function showDeleteGameForm() {
  var x = document.getElementById("deleteGameForm");
  if (x.style.display === "none") {
    x.style.display = "block";
    document.getElementById('buttondelete').innerHTML = 'Hide Form';
  } else {
    x.style.display = "none";
    document.getElementById('buttondelete').innerHTML = 'Show Form';
  }
}





