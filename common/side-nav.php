<?php require '../../config/config.inc.php';
require '../../config/url.inc.php';
echo '<script src="' . urlBase() . '/script/side-nav.js"></script>';
$aadhaar_num = base64_decode($_COOKIE["bas"]);
setcookie("bas", base64_encode($aadhaar_num), time() + 3600, "/");
if ($aadhaar_num == "") {
    header('Location: ' . urlBase() . '/login.php');
}
$sql = "SELECT * FROM user_details WHERE aadhaar_num='{$aadhaar_num}'";
$result = mysqli_query($conn, $sql);
if (mysqli_num_rows($result) == 0) {
    $sql = "INSERT INTO user_details (aadhaar_num) VALUES ('{$aadhaar_num}');";
    mysqli_query($conn, $sql);
    $sql = "SELECT * FROM user_details WHERE aadhaar_num='{$aadhaar_num}'";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_array($result);
} else {
    $user = mysqli_fetch_array($result);
}


$sql = "SELECT * FROM user_auth WHERE aadhaar_num='{$aadhaar_num}'";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) == 0) {
    $sql = "INSERT INTO user_auth (aadhaar_num, 
    privilege, role, session_start, session_id) 
    VALUES ('{$aadhaar_num}', 0, 'basic_user', NULL, NULL)";
    mysqli_query($conn, $sql);
    $sql = "SELECT * FROM user_auth WHERE aadhaar_num='{$aadhaar_num}'";
    $result = mysqli_query($conn, $sql);
    $user_auth  = mysqli_fetch_array($result);
} else {
    $user_auth  = mysqli_fetch_array($result);
}

?>

<a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <i class="fas fa-bars"></i>
</a>
<nav id="sidebar" class="sidebar-wrapper" <?php if (isset($hideSideNav) && $hideSideNav) echo 'style="display:none"'; ?>>
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
        <!-- sidebar-header  -->
        <div class="sidebar-search">
            <div>
                <form id="search_from" class="needs-validation" autocomplete="off">
                    <fieldset id="search_fieldset" autocomplete="false">
                        <div class="input-group">
                            <input type="text" class="form-control search-menu" placeholder="Search..." minlength="12" maxlength="12" autocomplete="false" onkeypress="searchAadhaar(event)" id="aadhaar_num" name="aadhaar_num" required>
                            <div class="input-group-append">
                                <span class="input-group-text">
                                    <i class="fa fa-search" aria-hidden="true"></i>
                                </span>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <!-- sidebar-search  -->
        <div class="sidebar-menu">
            <ul>
                <li class="sidebar-dropdown">
                    <a href="#">
                        <i class="fas fa-id-badge"></i>
                        <span>My Profile</span>
                    </a>
                    <div class="sidebar-submenu">
                        <ul>
                            <li>
                                <a href="<?php echo  urlBase() . $contact_and_basic_info ?> ">Contact and Basic Info</a>
                            </li>
                            <!-- <li>
                                <a href="<?php echo  urlBase() . $general_history ?> ">General History</a>
                            </li> -->
                        </ul>
                    </div>
                </li>
                <li class="sidebar-dropdown">
                    <a href="#">
                        <i class="fa fa-medkit"></i>
                        <span>Status and History</span>
                    </a>
                    <div class="sidebar-submenu">
                        <ul>
                            <li>
                                <a href="<?php echo  urlBase() . $medical_status ?> ">Update Medical Status </a>
                            </li>
                            <li>
                                <a href="<?php echo  urlBase() . $medical_history ?> ">Medical History</a>
                            </li>
                            <?php if ($user_auth['role'] == 'doctor') { ?>
                                <li>
                                    <a href="<?php echo  urlBase() . $death_report ?> ">Death Report</a>
                                </li>
                            <?php } ?>
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-thermometer-three-quarters"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
            </ul>
        </div>

    </div>

    <div class="sidebar-footer">
        <a href="#" onclick="notifications()">
            <i class="fa fa-bell"></i>
            <span class="badge badge-pill badge-warning notification">3</span>
        </a>
        <a href="#" onclick="my_message()">
            <i class="fa fa-envelope"></i>
            <span class="badge badge-pill badge-success notification">7</span>
        </a>
        <a href="#" onclick="settings()">
            <i class="fa fa-cog"></i>
            <span class="badge-sonar"></span>
        </a>
        <a href="#" onclick="signout()">
            <i class="fa fa-power-off"></i>
        </a>
    </div>
    <script>
        bindAllScript()
    </script>
</nav>