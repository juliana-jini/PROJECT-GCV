const mainMenuBar = document.querySelector(".main_menubar2");
const hideMenu = document.querySelector(".hide_menu");

/* mainMenuBar.addEventListener("mouseclick", () => {
  if (hideMenu.classList.contains("on")) {
    hideMenu.classList.remove("on");
  } else {
    hideMenu.classList.add("on");
  }
});

hideMenu.addEventListener("mouseleave", () => {
  if (hideMenu.classList.contains("on")) {
    hideMenu.classList.remove("on");
  } else {
    hideMenu.classList.add("on");
  }
}); */
function view(opt) {
  if(opt) {
     hideMenu.style.display = "table";
  }
  else {
     hideMenu.style.display = "none";
  }
}

$(function () {
  $(window).scroll(function () {
    if ($(this).scrollTop() > 200) {
      $("#btn_gotoTop").fadeIn();
    } else {
      $("#btn_gotoTop").fadeOut();
    }
  });
  $("#btn_gotoTop").click(function () {
    $("html, body").animate({ scrollTop: 0 }, 300);
    return false;
  });
});

// function openCloseToc() {
//   if (hideMenu.style.display == 'block') {
//     hideMenu.style.display = 'none';
//   } else {
//     hideMenu.style.display = "block";
//   }
// }
