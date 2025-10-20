document.addEventListener('DOMContentLoaded', () => {
  const region = document.querySelectorAll('tr');
  regions.forEach(region => {
    region.addEventListener('click', () => {
      alert('You clicked a row!');
    });
  });
});