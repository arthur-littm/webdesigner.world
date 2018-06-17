import "bootstrap";
import SweetScroll from 'sweet-scroll';
import { initUpdateNavbarOnScroll } from '../components/navbar';

initUpdateNavbarOnScroll();

document.addEventListener('DOMContentLoaded', () => {
  const scroller = new SweetScroll({/* some options */});
}, false);
