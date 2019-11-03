var forms = document.getElementsByClassName("needs-validation");
var geoData = {};
navigator.geolocation.getCurrentPosition(function(position) {
  geoData = {
    latitude: position.coords.latitude,
    longitude: position.coords.longitude
  };
});

var validation = Array.prototype.filter.call(forms, function(form) {
  form.addEventListener(
    "submit",
    function(event) {
      event.preventDefault();
      event.stopPropagation();
      form.classList.add("was-validated");
    },
    false
  );
});

function edit_form(ele) {
  var fieldset = document.getElementById("general_history_fieldset");
  fieldset.removeAttribute("disabled");
  ele.setAttribute("disabled", "");
  ele.nextElementSibling.removeAttribute("disabled");
}

function save_form(ele) {
  var form = document.getElementById("general_history_from");
  if (form.checkValidity()) {
    var request = $hieUtil.serializeArray(form);
    request.latitude = geoData.latitude;
    request.longitude = geoData.longitude;
    $hieUtil.xhr({
      requestMethod: "post",
      url: $hieUtil.getBaseUrl() + $general_history_save,
      request: JSON.stringify(request),
      successCallback: function(data) {
        if (data.isValid) {
          var fieldset = document.getElementById("general_history_fieldset");
          fieldset.setAttribute("disabled", "");
          ele.setAttribute("disabled", "");
          ele.previousElementSibling.removeAttribute("disabled");
        }
      },
      errorCallback: function(data) {}
    });
  }
}
