var swiper = new Swiper(".mySwiper", {
  slidesPerView: 1.1,
   centeredSlides: true,
  spaceBetween: 30,
  loop: true,
  pagination: {
    el: ".swiper-pagination",
    clickable: true
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
});
const summuryİnfo = document.querySelector('#summary-info');
const buyMovie = document.querySelector('#buy-movie');
const summury = document.querySelector('#summary');
const book = document.querySelector('#booking');

function takeActive(id){
  summuryİnfo.style.display = "none";
  buyMovie.style.display = "none";
  summury.classList.remove('active');
  book.classList.remove('active');
    if(summury.id === id){
    summuryİnfo.style.display = "block";
    summury.classList.add('active');
  }
  else if(book.id === id){
    buyMovie.style.display ="block";
    book.classList.add("active");
  }

}
const reserve = document.getElementsByClassName("resarvation");
console.log(reserve)
const  chair = document.querySelectorAll('#span-chair');
function choseChair(e){
  console.log ( e.currentTarget);
  // chair.classList.remove("active");
  // chair[value].classList.add("active");
}