function bindAllScript() {
    bindValidation();
}

function bindValidation() {
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function (form) {
        form.addEventListener('submit', function (event) {
            if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
            }
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
    var form = ele.parents('form')[0]
    if (form.checkValidity() === true) {

    }
    var fiveMinutes = 10;
    var display = document.querySelector('#counter-timer');
    $hieUtil.startTimer(fiveMinutes, display);
}