import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  // Reveal-on-scroll initialization
  const obs = new IntersectionObserver(entries => {
    entries.forEach(e => {
      if (e.isIntersecting) e.target.classList.add('visible')
    })
  }, { threshold: 0.15 });
  
  document.querySelectorAll('.reveal').forEach(el => obs.observe(el));

  // Cursor glow effect
  const glow = document.getElementById('glow');
  if (glow) {
    document.addEventListener('mousemove', e => {
      glow.style.left = e.clientX + 'px';
      glow.style.top = e.clientY + 'px';
    });
  }

  // Scroll CSS variable
  window.addEventListener('scroll', () => {
    document.documentElement.style.setProperty('--scroll', window.scrollY);
  });
});
