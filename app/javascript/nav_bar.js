document.addEventListener("turbo:load", () => {
  const nav = document.querySelector(".nav_links_container");
  const closeBtn = document.querySelector(".nav_close_btn");
  const overlay = document.querySelector(".overlay");
  const hamburger = document.querySelector(".hamburger");

  hamburger.addEventListener("click", () => {
    nav.classList.add("open");
    overlay.classList.add("open");
  });

  closeBtn.addEventListener("click", () => {
    nav.classList.remove("open");
    overlay.classList.remove("open");
  });

  overlay.addEventListener("click", () => {
    nav.classList.remove("open");
    overlay.classList.remove("open");
  });
});
