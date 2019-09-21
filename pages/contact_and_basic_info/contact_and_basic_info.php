<!DOCTYPE html>
<html lang="en">

<head>
        <?php include '../../common/head.php'; ?>
</head>

<body>
        <?php include '../../common/loader.php'; ?>
        <div class="page-wrapper chiller-theme toggled">
                <?php include '../../common/side-nav.php'; ?>
                <main class="page-content">
                        <?php include '../../common/header.php'; ?>
                        <div class="container">
                                <form id="contact_and_basic_info" class="needs-validation" method="get" action="./contact_and_basic_info.php" autocomplete="off">
                                        <fieldset id="contact_and_basic_info_fieldset" disabled autocomplete="false">
                                                <div class="form-row">
                                                        <div class="form-group col-md-4">
                                                                <label for="first_name">First Name</label>
                                                                <input type="text" class="form-control" id="first_name" placeholder="" value="<?php echo $user['first_name'] ?>" required>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="middle_name">Middle Name</label>
                                                                <input type="text" class="form-control" id="middle_name" placeholder="" value="<?php echo $user['middle_name'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="last_name">Last Name</label>
                                                                <input type="text" class="form-control" id="last_name" placeholder="" value="<?php echo $user['last_name'] ?>" required>
                                                        </div>
                                                </div>

                                                <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                                <label for="date_of_birth">Date of Birth</label>
                                                                <input type="date" class="form-control" id="date_of_birth" placeholder="26/01/1999" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" required>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                                <label for="gender">Gender</label>
                                                                <select id="gender" class="form-control" required>
                                                                        <option <?php if ($user['gender'] == '') echo "selected"; ?>value="">Choose...</option>
                                                                        <option <?php if ($user['gender'] == 'M') echo "selected"; ?> value="M">Male</option>
                                                                        <option <?php if ($user['gender'] == 'F') echo "selected"; ?> value="F">Female</option>
                                                                        <option <?php if ($user['gender'] == 'O') echo "selected"; ?> value="O">Other</option>
                                                                </select>
                                                        </div>
                                                </div>
                                                <div class="form-row">
                                                        <div class="form-group col-md-4">
                                                                <label for="email">Email </label>
                                                                <input type="email" class="form-control" id="email" value="<?php echo $user['email'] ?>" required>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="primery_number">Primery Contact Number</label>
                                                                <input type="text" maxlength="10" minlength="10" class="form-control" id="primery_number" value="<?php echo $user['primary_contact'] ?>" required>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="secondary_number">Secondary Contact Number</label>
                                                                <input type="text" maxlength="10" minlength="10" class="form-control" id="secondary_number" value="<?php echo $user['secondary_contact'] ?>">
                                                        </div>
                                                </div>

                                                <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                                <label for="addressline1">Address</label>
                                                                <input type="text" class="form-control" id="addressline1" placeholder="Flat /House No./Floot /Building" value="<?php echo $user['building'] ?>" required>
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                                <label for="addressline2">Address 2</label>
                                                                <input type="text" class="form-control" id="addressline2" placeholder="Colony /Street /Locality" value="<?php echo $user['street'] ?>" required>
                                                        </div>
                                                </div>
                                                <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                                <label for="city">City</label>
                                                                <input type="text" class="form-control" id="city" placeholder="Ernakulam" value="<?php echo $user['city'] ?>" required>
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="state">State</label>
                                                                <select id="state" class="form-control" required>
                                                                        <option value="">Choose...</option>
                                                                        <?php
                                                                        $states = array("Andhra Pradesh", "Arunachal Pradesh", "Assam", "Bihar", "Chhattisgarh", "Goa", "Gujarat", "Haryana", "Himachal Pradesh", "Jammu and Kashmir ", "Jharkhand", "Karnataka", "Kerala", "Madhya Pradesh", "Maharashtra", "Manipur", "Meghalaya", "Mizoram", "Nagaland", "Odisha", "Punjab", "Rajasthan", "Sikkim", "Tamil Nadu", "Telangana", "Tripura", "Uttar Pradesh", "Uttarakhand", "West Bengal", "Andaman and Nicobar Islands", "Chandigarh", "Dadra and Nagar Haveli", "Daman and Diu", "Lakshadweep", "National Capital Territory of Delhi", "Puducherry");
                                                                        for ($i = 0; $i < count($states); $i++) {
                                                                                echo '<option ' . ($user['state'] == $states[$i] ? 'selected="selected"' : '') . '>' . $states[$i] . '</option>';
                                                                        }
                                                                        ?>

                                                                </select>
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                                <label for="zip">Zip</label>
                                                                <input type="text" class="form-control" id="zip" placeholder="686662" value="<?php echo $user['zip'] ?>" required>
                                                        </div>
                                                </div>
                                        </fieldset>
                                        <div class="form-group">
                                                <button type="button" class="btn btn-primary" onclick="edit_form()">Edit</button>
                                                <button type="submit" class="btn btn-success" onclick="save_form()">Save</button>
                                        </div>

                                        <!-- <div class="form-group">
                                                <label for="exampleFormControlTextarea1">Example textarea</label>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="5"></textarea>
                                        </div> -->
                                </form>

                        </div>

                </main>
        </div>
        <?php include '../../common/footer.php'; ?>
        <script src="./contact_and_basic_info.js"></script>
</body>

</html>