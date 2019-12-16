function signout() {
  location.assign($hieUtil.getBaseUrl() + $login);
}
function settings() {
  location.assign($hieUtil.getBaseUrl() + $settings);
}

function my_message() {
  location.assign($hieUtil.getBaseUrl() + $my_message);
}

function notifications() {
  location.assign($hieUtil.getBaseUrl() + $notifications);
}

function bindAllScript() {
  var currentPath = location.pathname.split("/");
  currentPath = currentPath[currentPath.length - 1];
  var selectedLink = document.querySelector('a[href*="' + currentPath + '"]');

  var lis = $(selectedLink).parents("li");
  lis.addClass("active");
  if (selectedLink) {
    $(selectedLink).parents("div.sidebar-submenu")[0].style.display = "block";
  }
}

function searchAadhaar(ele) {
  var form = document.getElementById("search_from");
  if (form.checkValidity()) {
    var request = $hieUtil.serializeArray(form);
    $hieUtil.xhr({
      requestMethod: "post",
      url: $hieUtil.getBaseUrl() + $search,
      request: JSON.stringify(request),
      successCallback: function(data) {
        if (data.isValid) {
          location.reload();
        }
      },
      errorCallback: function(data) {}
    });
  }
}

function backToMyProfile() {
  $hieUtil.xhr({
    requestMethod: "post",
    url: $hieUtil.getBaseUrl() + $delete_cookie,
    request: "",
    successCallback: function(data) {
      if (data.isValid) {
        location.reload();
      }
    },
    errorCallback: function(data) {}
  });
}
