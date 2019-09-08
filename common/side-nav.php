<?php require '../../config/config.inc.php';
echo '<script src="' . urlBase() . '/script/side-nav.js"></script>';
$aadhaar_num = $_GET["id"];
$aadhaar_num = base64_decode($_COOKIE["bas"]);
$sql = "SELECT * FROM user_details WHERE aadhaar_num='{$aadhaar_num}'";
$result = mysqli_query($conn, $sql);
$user = mysqli_fetch_array($result);
$sql = "SELECT * FROM user_auth WHERE aadhaar_num='{$aadhaar_num}'";
$result = mysqli_query($conn, $sql);
$user_auth  = mysqli_fetch_array($result);
?>

<a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
</a>
<nav id="sidebar" class="sidebar-wrapper">
    <div class="sidebar-content">
        <div class="sidebar-brand">
            <a href="#">HIE</a>
            <div id="close-sidebar">
                <i class="fas fa-times"></i>
            </div>
        </div>
        <div class="sidebar-header">
            <div class="user-pic">
                <?php
                if ($user['gender'] == 'M') {

                    echo "<img class='img-responsive img-rounded' src='" . urlBase() . "/image/male.png' alt='User picture'>";
                } else {
                    echo "<img class='img-responsive img-rounded' src='" . urlBase() . "/image/female.jpg' alt='User picture'>";
                } ?>
            </div>
            <br>
            <br>
            <br>
            <div class="user-info">
                <span class="user-name">
                    <strong><?php echo ucwords($user['first_name']); ?></strong>
                    <?php echo ucwords($user['last_name']); ?>
                </span>
                <span class="user-role">
                    <?php echo ucwords($user_auth['role']); ?>
                </span>

            </div>
        </div>

        <div class="sidebar-menu">
            <ul>
                <li class="sidebar-menu-item active">
                    <a href="#">
                        <i class="fas fa-id-badge"></i>
                        <span>Documentation</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-calendar"></i>
                        <span>Calendar</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-folder"></i>
                        <span>Examples</span>
                    </a>
                </li>
            </ul>
        </div>

    </div>

    <div class="sidebar-footer">
        <a href="#">
            <i class="fa fa-bell"></i>
            <span class="badge badge-pill badge-warning notification">3</span>
        </a>
        <a href="#">
            <i class="fa fa-envelope"></i>
            <span class="badge badge-pill badge-success notification">7</span>
        </a>
        <a href="#">
            <i class="fa fa-cog"></i>
            <span class="badge-sonar"></span>
        </a>
        <a href="#" onclick="signout()">
            <i class="fa fa-power-off"></i>
        </a>
    </div>
</nav>