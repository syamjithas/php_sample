function signout() {
  location.assign($hieUtil.getBaseUrl() + $login);
}
function settings() {
  location.assign($hieUtil.getBaseUrl() + $settings);
}

function bindAllScript() {
  var currentPath = location.pathname.split("/");
  currentPath = currentPath[currentPath.length - 1];
  var selectedLink = document.querySelector('a[href*="' + currentPath + '"]');

  var lis = $(selectedLink).parents("li");
  lis.addClass("active");
  $(selectedLink).parents("div.sidebar-submenu")[0].style.display = "block";
}
