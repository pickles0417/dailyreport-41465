window.addEventListener('turbo:load', function(){
  const menu = document.getElementById("menu1");
  const pullDownMenu = document.getElementById("menu1-pull-down");

  menu.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: #5bc8ac;");
  });
  menu.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: #5bc8ac;");
  });

  menu.addEventListener('click', function() {
    if (pullDownMenu.getAttribute("style") == "display:block;") {
      pullDownMenu.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu.setAttribute("style", "display:block;");
    }
  });
});

window.addEventListener('turbo:load', function(){
  const menu = document.getElementById("menu2");
  const pullDownMenu = document.getElementById("menu2-pull-down");

  menu.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: #5bc8ac;");
  });
  menu.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: #5bc8ac;");
  });

  menu.addEventListener('click', function() {
    if (pullDownMenu.getAttribute("style") == "display:block;") {
      pullDownMenu.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu.setAttribute("style", "display:block;");
    }
  });
});

window.addEventListener('turbo:load', function(){
  const menu = document.getElementById("menu3");
  const pullDownMenu = document.getElementById("menu3-pull-down");

  menu.addEventListener('mouseover', function(){
    this.setAttribute("style", "background-color: #5bc8ac;");
  });
  menu.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color: #5bc8ac;");
  });

  menu.addEventListener('click', function() {
    if (pullDownMenu.getAttribute("style") == "display:block;") {
      pullDownMenu.removeAttribute("style", "display:block;");
    } else {
      pullDownMenu.setAttribute("style", "display:block;");
    }
  });
});