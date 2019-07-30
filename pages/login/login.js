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
        $.post($hieUtil.getBaseUrl() + "/pages/login/validate_otp.php", JSON.stringify(request),
            function (data) {
                if (data.isValid) {
                    $.toast({
                        heading: 'Success',
                        text: 'OTP Generated successfully',
                        hideAfter: 5000,
                        icon: 'success',
                        position: 'bottom-right'
                    })
                } else {
                    $.toast({
                        heading: 'Error',
                        text: 'Incorrect OTP Please Try Again',
                        hideAfter: 5000,
                        icon: 'error',
                        position: 'bottom-right'
                    })
                }
            }, "json");
    }
}
function generateOtp(event) {
    var ele = $(event.target)
    var form = ele.parents('form')[0];
    var fiveMinutes = 60 * 2;
    var display = document.querySelector('#counter-timer');
    if (form.checkValidity()) {
        var aadhaar_num = $('#aadhaar-id-txt').val();
        var request = {};
        request.aadhaar_num = aadhaar_num;
        $.post($hieUtil.getBaseUrl() + "/pages/login/generate_otp.php", JSON.stringify(request),
            function (data) {
                if (data.isValid) {
                    $hieUtil.startTimer(fiveMinutes, display);
                    $.toast({
                        heading: 'Success',
                        text: 'OTP Generated successfully',
                        hideAfter: 5000,
                        icon: 'success',
                        position: 'bottom-right'
                    })
                } else {
                    $.toast({
                        heading: 'Error',
                        text: 'Please enter a valid Aadhaar number',
                        hideAfter: 5000,
                        icon: 'error',
                        position: 'bottom-right'
                    })
                }
            }, "json");
    }
}