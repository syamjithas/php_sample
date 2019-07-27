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
echo '<link rel="stylesheet" href="' . urlBase() . '/lib/jquery/css/bootstrap.min.css">';
echo '<link rel="stylesheet" href="' . urlBase() . '/lib/jquery/css/bootstrap-grid.min.css">';
echo '<link rel="stylesheet" href="' . urlBase() . '/lib/jquery/css/bootstrap-reboot.min.css">';
echo '<script src="' . urlBase() . '/lib/jquery/js/jquery-3.3.1.slim.min.js"></script>';
echo '<script src="' . urlBase() . '/lib/jquery/js/popper.min.js"></script>';
echo '<script src="' . urlBase() . '/lib/jquery/js/bootstrap.min.js"></script>';
echo '<script src="' . urlBase() . '/lib/jquery/js/bootstrap.bundle.min.js"></script>';
echo '<script src="' . urlBase() . '/script/script.js"></script>';
?>

<title>HIE</title>