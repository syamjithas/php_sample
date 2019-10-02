var forms = document.getElementsByClassName('needs-validation');
var validation = Array.prototype.filter.call(forms, function (form) {
    form.addEventListener('submit', function (event) {
        event.preventDefault();
        event.stopPropagation();
        form.classList.add('was-validated');
    }, false);
});

$(function () {

    $.fn.filepond.registerPlugin(
        // encodes the file as base64 data
        FilePondPluginFileEncode,
        // validates the size of the file
        FilePondPluginFileValidateSize,
        // corrects mobile image orientation
        FilePondPluginImageExifOrientation,
        // previews dropped images
        FilePondPluginImagePreview);

    $.fn.filepond.setOptions({
        dropOnPage: true,
        dropOnElement: true
    });
});



$(function () {

    // Turn input element into a pond
    $('#report-file-upload').filepond();

    // Turn input element into a pond with configuration options
    $('#report-file-upload').filepond({
        allowMultiple: true
    });
    // Listen for addfile event
    $('#report-file-upload').on('FilePond:addfile', function (e,f) {
        console.log('file added event', e,f);
    });

    // Manually add a file using the addfile method
    $('#report-file-upload').filepond('addFile', 'index.html').then(function (file) {
        console.log('file added', file);
    });

  

});



function edit_form(ele) {
    var fieldset = document.getElementById("medical_status_fieldset");
    fieldset.removeAttribute("disabled");
    ele.setAttribute("disabled", "");
    ele.nextElementSibling.removeAttribute("disabled");
}

function save_form(ele) {
    var form = document.getElementById('medical_status_from');
    if (form.checkValidity()) {
        var request = $hieUtil.serializeArray(form);
        $hieUtil.xhr({
            requestMethod: "post",
            url: $hieUtil.getBaseUrl() + $medical_status_save,
            request: JSON.stringify(request),
            successCallback: function (data) {
                if (data.isValid) {
                    var fieldset = document.getElementById("medical_status_fieldset");
                    fieldset.setAttribute("disabled", "");
                    ele.setAttribute("disabled", "");
                    ele.previousElementSibling.removeAttribute("disabled");
                }
            },
            errorCallback: function (data) { }
        });
    }
}
