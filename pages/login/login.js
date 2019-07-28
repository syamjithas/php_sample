function bindAllScript() {
    bindValidation();
    var option = {};
    option.animation = true;
    option.autohide = true;
    option.delay = 50000;
    // $('.toast').toast(option);
    $('#toster').toast(option);

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
    var form = ele.parents('form')[0]
    if (form.checkValidity() === true) {

    }
}
function generateOtp(event) {
    var ele = $(event.target)
    var form = ele.parents('form')[0];
    var fiveMinutes = 60*2;
    var display = document.querySelector('#counter-timer');
    if (form.checkValidity() === true) {
        var aadhaarId = $('#aadhaar-id-txt').val();
        var request = {};
        request.aadhaarId = aadhaarId;
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
                }else{
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