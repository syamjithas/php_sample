var forms = document.getElementsByClassName('needs-validation');
var validation = Array.prototype.filter.call(forms, function (form) {
    form.addEventListener('submit', function (event) {
        event.preventDefault();
        event.stopPropagation();
        form.classList.add('was-validated');
    }, false);
});

function edit_form(ele) {
    var fieldset = document.getElementById("contact_and_basic_info_fieldset");
    fieldset.removeAttribute("disabled");
    ele.setAttribute("disabled", "");
    ele.nextElementSibling.removeAttribute("disabled");
}


function save_form(ele) {
    var form = document.getElementById('contact_and_basic_info_form');
    if (form.checkValidity()) {
        var request = $hieUtil.serializeArray(form);
        $hieUtil.xhr({
            requestMethod: "post",
            url: $hieUtil.getBaseUrl() + $contact_and_basic_info_save,
            request: JSON.stringify(request),
            successCallback: function (data) {
                if (data.isValid) {
                    var fieldset = document.getElementById("contact_and_basic_info_fieldset");
                    fieldset.setAttribute("disabled", "")
                    ele.setAttribute("disabled", "");
                    ele.previousElementSibling.removeAttribute("disabled");
                }
            },
            errorCallback: function (data) { }
        });
    }
}

