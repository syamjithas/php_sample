function bindAllScript() {
    bindValidation();
    var option={};
    option.animation =true;
    option.autohide =true;
    option.delay =50000;
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
    var fiveMinutes = 10;
    var display = document.querySelector('#counter-timer');
    if (form.checkValidity() === true) {
        var aadhaarId = $('aadhaar-id-txt').val();
        var request = {};
        request.aaadhaarId = aadhaarId;
        $.post($hieUtil.getBaseUrl() + "/pages/login/generate_otp.php", request, 
        function (data) {
            console.log(data);
            $hieUtil.startTimer(fiveMinutes, display);
            $('#toster').toast('show')
        }, "json");
    }
}