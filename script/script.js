var classHie = function () {

}
classHie.prototype.getBaseUrl = function () {
    var a = document.createElement("a");
    a.href = location.href;
    var basePath = a.origin + '/' + a.pathname.split('/')[1] + '/';
    return basePath;
}
classHie.prototype.startTimer = function (duration, display) {
    var timer = duration, minutes, seconds;
    var timerInterval = setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            window.clearInterval(timerInterval);
            display.textContent ="00:00";
        }
    }, 1000);
}


$hieUtil = new classHie();


