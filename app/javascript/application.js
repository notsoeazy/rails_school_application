// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// This fix issues reloading javascript files
// import "@hotwired/turbo-rails"
import "controllers"

// For school manager dropdowns
document.addEventListener("DOMContentLoaded", function () {
    const elements = document.querySelectorAll(".fade-up");
    const observer = new IntersectionObserver(entries => {
        entries.forEach(entry => {
            if (entry.isIntersecting) entry.target.classList.add("show");
        });
    }, { threshold: 0.2 });

    elements.forEach(el => observer.observe(el));
});

//  For homepage fade effects
document.addEventListener("DOMContentLoaded", () => {
    const elements = document.querySelectorAll("[data-animate='fade-up']");

    const observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                // Restart animation by resetting the class
                entry.target.classList.remove("fade-up");
                void entry.target.offsetWidth; 
                entry.target.classList.add("fade-up");
            } else {
                // Remove class when leaving viewport
                entry.target.classList.remove("fade-up");
            }
        });
    }, {
        threshold: 0.2
    });

    elements.forEach(el => observer.observe(el));
});
  
  


