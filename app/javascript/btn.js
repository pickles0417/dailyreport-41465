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