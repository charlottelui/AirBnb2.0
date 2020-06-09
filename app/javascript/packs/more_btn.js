function myFunction() {
  var dots = document.getElementById("dots");
  var more = document.getElementById("more");
  var btn = document.getElementById("myBtn");
// dots is not showing
  if (dots.style.display === "none") {
    dots.style.display = "inline";
    btn.innerHTML = "Read more";
    // dont show the moretext div text.
    more.style.display = "none";
  } else {
    //dont show the dots
    dots.style.display = "none";
    // change the inner text to read less
    btn.innerHTML = "Read less";
    // the rest display inline.
    more.style.display = "inline";
  }
}
