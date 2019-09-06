<!DOCTYPE html>
<html lang="en">

<head>
    <?php include 'common/head.php'; ?>
    <link rel="stylesheet" href="./pages/login/login.css">
    <script src="./pages/login/login.js"></script>
</head>

<body>
    <?php include 'common/loader.php'; ?>
    <?php include 'common/header.php'; ?>
    <div class="container">
        <div class="content">
            <span class="img-box">
                <span class="human-heart-box">
                    <img src="./image/heart.png" class="human-heart" alt="human heart" />
                </span>
            </span>
            <span class="login-box">
                <form class="needs-validation" id="aadhar-form" novalidate>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Aadhaar ID</span>
                        </div>
                        <input type="text" class="form-control" id="aadhaar-id-txt" placeholder="" minlength="12" maxlength="12" required>
                        <div class="invalid-feedback">
                            Please Enter a valid Aadhaar Number
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <p class="card-text">OTP: One Time Password will be sent to the resident’s Aadhaar registered mobile number.</p>
                            <button type="submit" class="btn btn-primary" onclick=generateOtp(event) id="generate-otp-btn">Generate OTP</button>
                        </div>
                    </div>
                    <div style="margin: 5px;">
                    </div>
                </form>
                <form class="needs-validation" novalidate>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">OTP</span>
                        </div>
                        <input type="password" class="form-control" id="otp-txt" placeholder="" minlength="4" maxlength="4" required>
                        <div class="input-group-append">
                            <span class="input-group-text">
                                <span id="counter-timer" class="badge badge-warning">00:00</span>
                            </span>
                        </div>
                        <div class="invalid-feedback">
                            Please Enter OTP
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <button type="submit" class="btn btn-primary" onclick=signIn(event)>Sign In</button>
                    </div>
                </form>
            </span>
        </div>
    </div>
    <script>
        bindAllScript()
    </script>
</body>

</html>