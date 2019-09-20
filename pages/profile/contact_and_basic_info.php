<!DOCTYPE html>
<html lang="en">

<head>
        <?php include '../../common/head.php'; ?>
</head>

<body>
        <div class="page-wrapper chiller-theme toggled">
                <?php include '../../common/side-nav.php'; ?>
                <main class="page-content">
                        <?php include '../../common/header.php'; ?>
                        <div class="container">
                                <form id="contact_and_basic_info" method="get" action="./contact_and_basic_info.php" autocomplete="off">
                                        <fieldset disabled autocomplete="false">
                                                <div class="form-row">
                                                        <div class="form-group col-md-4">
                                                                <label for="first_name">First Name</label>
                                                                <input type="text" class="form-control" id="first_name" placeholder="" value="<?php echo $user['first_name'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="middle_name">Middle Name</label>
                                                                <input type="text" class="form-control" id="middle_name" placeholder="" value="<?php echo $user['middle_name'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="last_name">Last Name</label>
                                                                <input type="text" class="form-control" id="last_name" placeholder="" value="<?php echo $user['last_name'] ?>">
                                                        </div>
                                                </div>

                                                <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                                <label for="date_of_birth">Date of Birth</label>
                                                                <input type="date" class="form-control" id="date_of_birth" placeholder="26/01/1999" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>">
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                                <label for="gender">Gender</label>
                                                                <select id="gender" class="form-control">
                                                                        <option <?php if ($user['gender'] == '') echo "selected"; ?>>Choose...</option>
                                                                        <option <?php if ($user['gender'] == 'M') echo "selected"; ?> value="M">Male</option>
                                                                        <option <?php if ($user['gender'] == 'F') echo "selected"; ?> value="F">Female</option>
                                                                        <option <?php if ($user['gender'] == 'O') echo "selected"; ?> value="O">Other</option>
                                                                </select>
                                                        </div>
                                                </div>
                                                <div class="form-row">
                                                        <div class="form-group col-md-4">
                                                                <label for="email">Email </label>
                                                                <input type="email" class="form-control" id="email" value="<?php echo $user['email'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="primery_number">Primery Number</label>
                                                                <input type="text" maxlength="10" minlength="10" class="form-control" id="primery_number" value="<?php echo $user['primary_contact'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="secondary_number">Secondary Number</label>
                                                                <input type="text" maxlength="10" minlength="10" class="form-control" id="secondary_number" value="<?php echo $user['secondary_contact'] ?>">
                                                        </div>
                                                </div>

                                                <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                                <label for="addressline1">Address</label>
                                                                <input type="text" class="form-control" id="addressline1" placeholder="Flat /House No./Floot /Building" value="<?php echo $user['building'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-6">
                                                                <label for="addressline2">Address 2</label>
                                                                <input type="text" class="form-control" id="addressline2" placeholder="Colony /Street /Locality" value="<?php echo $user['street'] ?>">
                                                        </div>
                                                </div>
                                                <div class="form-row">
                                                        <div class="form-group col-md-6">
                                                                <label for="city">City</label>
                                                                <input type="text" class="form-control" id="city" placeholder="Ernakulam" value="<?php echo $user['city'] ?>">
                                                        </div>
                                                        <div class="form-group col-md-4">
                                                                <label for="state">State</label>
                                                                <select id="state" class="form-control">
                                                                        <option selected>Choose...</option>
                                                                        <option value="Andhra Pradesh"> Andhra Pradesh </option>
                                                                        <option value="Arunachal Pradesh"> Arunachal Pradesh </option>
                                                                        <option value="Assam"> Assam </option>
                                                                        <option value="Bihar"> Bihar </option>
                                                                        <option value="Chhattisgarh"> Chhattisgarh </option>
                                                                        <option value="Goa"> Goa </option>
                                                                        <option value="Gujarat"> Gujarat </option>
                                                                        <option value="Haryana"> Haryana </option>
                                                                        <option value="Himachal Pradesh"> Himachal Pradesh </option>
                                                                        <option value="Jammu and Kashmir (until 31 October 2019)"> Jammu and Kashmir (until 31 October 2019) </option>
                                                                        <option value="Jharkhand"> Jharkhand </option>
                                                                        <option value="Karnataka"> Karnataka </option>
                                                                        <option value="Kerala"> Kerala </option>
                                                                        <option value="Madhya Pradesh"> Madhya Pradesh </option>
                                                                        <option value="Maharashtra"> Maharashtra </option>
                                                                        <option value="Manipur"> Manipur </option>
                                                                        <option value="Meghalaya"> Meghalaya </option>
                                                                        <option value="Mizoram"> Mizoram </option>
                                                                        <option value="Nagaland"> Nagaland </option>
                                                                        <option value="Odisha"> Odisha </option>
                                                                        <option value="Punjab"> Punjab </option>
                                                                        <option value="Rajasthan"> Rajasthan </option>
                                                                        <option value="Sikkim"> Sikkim </option>
                                                                        <option value="Tamil Nadu"> Tamil Nadu </option>
                                                                        <option value="Telangana"> Telangana </option>
                                                                        <option value="Tripura"> Tripura </option>
                                                                        <option value="Uttar Pradesh"> Uttar Pradesh </option>
                                                                        <option value="Uttarakhand"> Uttarakhand </option>
                                                                        <option value="West Bengal"> West Bengal </option>
                                                                        <option value="Andaman and Nicobar Islands"> Andaman and Nicobar Islands </option>
                                                                        <option value="Chandigarh"> Chandigarh </option>
                                                                        <option value="Dadra and Nagar Haveli"> Dadra and Nagar Haveli </option>
                                                                        <option value="Daman and Diu"> Daman and Diu </option>
                                                                        <option value="Lakshadweep"> Lakshadweep </option>
                                                                        <option value="National Capital Territory of Delhi"> National Capital Territory of Delhi </option>
                                                                        <option value="Puducherry"> Puducherry </option>
                                                                </select>
                                                        </div>
                                                        <div class="form-group col-md-2">
                                                                <label for="zip">Zip</label>
                                                                <input type="text" class="form-control" id="zip" placeholder="686662">
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