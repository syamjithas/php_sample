var forms = document.getElementsByClassName('needs-validation');
var validation = Array.prototype.filter.call(forms, function (form) {
    form.addEventListener('submit', function (event) {
        event.preventDefault();
        event.stopPropagation();
        form.classList.add('was-validated');
    }, false);
});

function edit_form() {
    var ele = document.getElementById("contact_and_basic_info_fieldset");
    ele.removeAttribute("disabled")
}


function save_form() {
    var form = document.getElementById('contact_and_basic_info');
    if (form.checkValidity()) {
        var request = $hieUtil.serializeArray(form);
        $hieUtil.xhr({
            requestMethod: "post",
            url: $hieUtil.getBaseUrl() + $contact_and_basic_info_save,
            request: JSON.stringify(request),
            successCallback: function (data) {
                if (data.isValid) {
                    var ele = document.getElementById("contact_and_basic_info_fieldset");
                    ele.setAttribute("disabled","")
                }
            },
            errorCallback: function (data) { }
        });
    }
}

