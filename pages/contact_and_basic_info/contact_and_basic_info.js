$(function() {
  $.fn.filepond.registerPlugin(
    // encodes the file as base64 data
    FilePondPluginFileEncode,
    // validates the size of the file
    FilePondPluginFileValidateSize,
    // corrects mobile image orientation
    FilePondPluginImageExifOrientation,
    // previews dropped images
    FilePondPluginImagePreview,
    FilePondPluginFileValidateType
  );

  $.fn.filepond.setOptions({
    dropOnPage: true,
    dropOnElement: true
  });
});

$(function() {
  window.files = $("#user-image-file-upload").filepond({
    allowMultiple: false,
    acceptedFileTypes: ["image/png", "image/jpeg"]
  });
});

var forms = document.getElementsByClassName("needs-validation");
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
  var fieldset = document.getElementById("contact_and_basic_info_fieldset");
  fieldset.removeAttribute("disabled");
  ele.setAttribute("disabled", "");
  ele.nextElementSibling.removeAttribute("disabled");
}

function save_form(ele) {
  var form = document.getElementById("contact_and_basic_info_form");
  if (form.checkValidity()) {
    var request = $hieUtil.serializeArray(form);
    var filepond = JSON.parse(request.filepond);
    request.filepond = undefined;
    request.user_image = "data:" + filepond.type + ";base64," + filepond.data;
    $hieUtil.xhr({
      requestMethod: "post",
      url: $hieUtil.getBaseUrl() + $contact_and_basic_info_save,
      request: JSON.stringify(request),
      successCallback: function(data) {
        if (data.isValid) {
          var fieldset = document.getElementById(
            "contact_and_basic_info_fieldset"
          );
          fieldset.setAttribute("disabled", "");
          ele.setAttribute("disabled", "");
          ele.previousElementSibling.removeAttribute("disabled");
        }
      },
      errorCallback: function(data) {}
    });
  }
}
