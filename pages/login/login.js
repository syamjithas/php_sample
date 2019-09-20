function bindAllScript() {
    bindValidation();
}

function bindValidation() {
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function (form) {
        form.addEventListener('submit', function (event) {
            event.preventDefault();
            event.stopPropagation();
            form.classList.add('was-validated');
        }, false);
    });
}

function signIn(event) {
    var ele = $(event.target)
    var form = ele.parents('form')[0];
    var aadharForm = $('#aadhar-form')[0];
    if (!aadharForm.checkValidity()) {
        aadharForm.classList.add('was-validated');
        return;
    }
    if (form.checkValidity()) {
        var request = {};
        var otp = $('#otp-txt').val();
        var aadhaar_num = $('#aadhaar-id-txt').val();
        request.aadhaar_num = aadhaar_num;
        request.otp = otp;
        $hieUtil.xhr({
            requestMethod: "post",
            url: $hieUtil.getBaseUrl() + $validate_otp,
            request: JSON.stringify(request),
            successCallback: function (data) {
                if (data.isValid) {
                    setTimeout(function () {
                        window.location.href = $hieUtil.getBaseUrl() + $contact_and_basic_info;
                    }, 3000)
                }
            },
            errorCallback: function (data) { }
        });
    }
}
function generateOtp(event) {
    var ele = $(event.target)
    var form = ele.parents('form')[0];
    var display = document.querySelector('#counter-timer');
    if (form.checkValidity()) {
        var aadhaar_num = $('#aadhaar-id-txt').val();
        var request = {};
        request.aadhaar_num = aadhaar_num;
        $hieUtil.xhr({
            requestMethod: "post",
            url: $hieUtil.getBaseUrl() + $generate_otp,
            request: JSON.stringify(request),
            successCallback: function (data) {
                if (data.isValid) {
                    $hieUtil.startTimer(60 * 2, display);
                }
            },
            errorCallback: function (data) { }
        });
    }
}