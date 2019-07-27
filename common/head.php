<?php
function urlBase()
{
    $protocol = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off' ? 'https' : 'http';
    $url = $protocol . '://' . $_SERVER['SERVER_NAME'] . '/' . explode('/', $_SERVER['REQUEST_URI'])[1];
    return $url;
}
?>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script src=""></script>
<script src=""></script>
<script src=""></script>

<?php
echo '<link rel="shortcut icon" href="' . urlBase() . '/image/favicon.ico" type="image/x-icon">';
echo '<link rel="stylesheet" href="' . urlBase() . '/css/style.css">';
echo '<link rel="stylesheet" href="' . urlBase() . '/lib/bootstrap/css/bootstrap.min.css">';
echo '<link rel="stylesheet" href="' . urlBase() . '/lib/bootstrap/css/bootstrap-grid.min.css">';
echo '<link rel="stylesheet" href="' . urlBase() . '/lib/bootstrap/css/bootstrap-reboot.min.css">';
echo '<script src="' . urlBase() . '/lib/jquery-3.4.1.min.js"></script>';
echo '<script src="' . urlBase() . '/lib/bootstrap/js/popper.min.js"></script>';
echo '<script src="' . urlBase() . '/lib/bootstrap/js/bootstrap.min.js"></script>';
echo '<script src="' . urlBase() . '/lib/bootstrap/js/bootstrap.bundle.min.js"></script>';
echo '<script src="' . urlBase() . '/script/script.js"></script>';
?>

<title>HIE</title>