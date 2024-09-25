window.addEventListener('turbo:load', function(){
  const customerShowButtons = document.querySelectorAll(".customer-show-btn");

  customerShowButtons.forEach(button => {
    button.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #008080;");
    });

    button.addEventListener('mouseout', function() {
      this.removeAttribute("style");
    });
  });
});

window.addEventListener('turbo:load', function(){
  const dailyShowButtons = document.querySelectorAll(".daily-show-btn");

  dailyShowButtons.forEach(button => {
    button.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #008080;");
    });

    button.addEventListener('mouseout', function() {
      this.removeAttribute("style");
    });
  });
});

window.addEventListener('turbo:load', function(){
  const FormButton = document.getElementById("form-button");

  FormButton.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #008080;");
  });
  FormButton.addEventListener('mouseout', function() {
      this.removeAttribute("style");
  });
});

window.addEventListener('turbo:load', function(){
  const customerEditButton = document.getElementById("customer-edit-button");

  customerEditButton.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #008080;");
  });
  customerEditButton.addEventListener('mouseout', function() {
      this.removeAttribute("style");
  });
});

window.addEventListener('turbo:load', function(){
  const dailyNewButton = document.getElementById("daily-new-button");

  dailyNewButton.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #008080;");
  });
  dailyNewButton.addEventListener('mouseout', function() {
      this.removeAttribute("style");
  });
});

window.addEventListener('turbo:load', function(){
  const searchButton = document.getElementById("search-button");

  searchButton.addEventListener('mouseover', function() {
      this.setAttribute("style", "background-color: #696969;");
  });
  searchButton.addEventListener('mouseout', function() {
      this.removeAttribute("style");
  });
});

window.addEventListener('turbo:load', function(){
  const footerGuide = document.getElementById("footer-guide");

  footerGuide.addEventListener('mouseover', function() {
    footerGuide.style.color = '#5bc8ac';
  });
  footerGuide.addEventListener('mouseout', function() {
    footerGuide.style.color = '';
  });
});

window.addEventListener('turbo:load', function(){
  const footerGuideLine = document.getElementById("footer-guideline");

  footerGuideLine.addEventListener('mouseover', function() {
    footerGuideLine.style.color = '#5bc8ac';
  });
  footerGuideLine.addEventListener('mouseout', function() {
    footerGuideLine.style.color = '';
  });
});

window.addEventListener('turbo:load', function(){
  const footerNews = document.getElementById("footer-news");

  footerNews.addEventListener('mouseover', function() {
    footerNews.style.color = '#5bc8ac';
  });
  footerNews.addEventListener('mouseout', function() {
    footerNews.style.color = '';
  });
});