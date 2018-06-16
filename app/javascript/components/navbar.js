function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.noobar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 10) {
        navbar.classList.add('noobar-white');
      } else {
        navbar.classList.remove('noobar-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
