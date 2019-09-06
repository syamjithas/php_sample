var classHie = function () {
    this.basePath = 'http://localhost/hie/';
}
classHie.prototype.getBaseUrl = function () {
    var a = document.createElement("a");
    a.href = location.href;
    var basePath = a.origin + '/' + a.pathname.split('/')[1] + '/';
    return basePath;
}
classHie.prototype.getBaseDir = function () {
    var a = document.createElement("a");
    a.href = location.href;
    var basePath = a.pathname.split('/')[1] + '/';
    return basePath;
}

classHie.prototype.startTimer = function (duration, display) {
    if (window.timerInterval) {
        window.clearInterval(window.timerInterval);
    }
    var timer = duration, minutes, seconds;
    window.timerInterval = setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            window.clearInterval(window.timerInterval);
            display.textContent = "00:00";
        }
    }, 1000);
}
classHie.prototype.loader = function () {
    $('#loader-box').toggleClass('loader-disable');
    $('#loader-box').toggleClass('loader-enable');
}
/*
Function for trigger XML Http Request 
*/
classHie.prototype.xhr = function (reqObj) {
    this.loader();
    setTimeout(function () {
        $hieUtil.loader();
        $[reqObj.requestMethod](reqObj.url, reqObj.request,
            function (data) {
                if (data.status == "success") {
                    $.toast({
                        heading: 'Success',
                        text: data.message,
                        hideAfter: 2000,
                        icon: 'success',
                        position: 'bottom-right'
                    })
                    reqObj.successCallback(data);
                } else if (data.status == "error") {
                    $.toast({
                        heading: 'Error',
                        text: data.message,
                        hideAfter: 2000,
                        icon: 'error',
                        position: 'bottom-right'
                    })
                    reqObj.errorCallback(data);
                }
                else if (data.status == "backend-error") {
                    $.toast({
                        heading: 'Service Exception',
                        text: data.message,
                        hideAfter: 2000,
                        icon: 'error',
                        position: 'bottom-right'
                    })
                    reqObj.errorCallback(data);
                }

            }, "json");
    }, 2000)
}


$hieUtil = new classHie();


