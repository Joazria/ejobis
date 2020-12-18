// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
  // Look for .hamburger
  
  
  document.addEventListener('turbolinks:load', () => {
    let open = false;
    const hamburger = document.querySelector(".hamburger");
    hamburger.addEventListener("click", () => {
      hamburger.classList.toggle("is-active");
      if( open ) {
        hamburger.previousElementSibling.classList.toggle("ej-navbar-drawer--active");
        const time = setTimeout(() => {
          hamburger.previousElementSibling.classList.toggle("ej-navbar-drawer--visible");
        }, 200);
        open = false;
      } else {
        hamburger.previousElementSibling.classList.toggle("ej-navbar-drawer--visible");
        const time = setTimeout(() => {
          hamburger.previousElementSibling.classList.toggle("ej-navbar-drawer--active");
        }, 200);
        open = true;
      }
    });
  // Call your functions here, e.g:
  // initSelect2();
});
