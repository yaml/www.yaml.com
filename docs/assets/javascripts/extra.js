// Custom JavaScript for yaml.com

console.log('The YAML Company - Supporting YAML Infrastructure');

// Scroll-triggered animations for elements coming into view
document.addEventListener('DOMContentLoaded', function() {
  // Intersection Observer for scroll animations
  const observerOptions = {
    threshold: 0.1,
    rootMargin: '0px 0px -50px 0px'
  };

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('is-visible');
        // Unobserve after animating to improve performance
        observer.unobserve(entry.target);
      }
    });
  }, observerOptions);

  // Observe elements that should animate on scroll
  const animatedElements = document.querySelectorAll(
    '.project-card, .tier-card, .section-title'
  );

  animatedElements.forEach((el, index) => {
    // Add initial hidden state
    el.style.opacity = '0';
    el.style.transform = 'translateY(30px)';
    el.style.transition = `opacity 0.6s ease-out ${index * 0.1}s, transform 0.6s ease-out ${index * 0.1}s`;

    // Observe for intersection
    observer.observe(el);
  });
});
