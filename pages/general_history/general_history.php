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
                                <form id="general_history_from" class="needs-validation" autocomplete="off">
                                        <fieldset id="general_history_fieldset" disabled autocomplete="false">
                                                <div class="form-row">
                                                        <div class="form-group col-md-3">
                                                                <label for="marital_status">Marital Status</label>
                                                                <select id="marital_status" class="form-control" required>
                                                                        <option <?php if ($user['gender'] == '') echo "selected"; ?>value="">Choose...</option>
                                                                        <option <?php if ($user['gender'] == 'Single') echo "selected"; ?> value="Single">Single</option>
                                                                        <option <?php if ($user['gender'] == 'Married') echo "selected"; ?> value="Married">Married</option>
                                                                        <option <?php if ($user['gender'] == 'Widowed') echo "selected"; ?> value="Widowed">Widowed</option>
                                                                        <option <?php if ($user['gender'] == 'Separated') echo "selected"; ?> value="Separated">Separated</option>
                                                                        <option <?php if ($user['gender'] == 'Divorced') echo "selected"; ?> value="Divorced">Divorced</option>
                                                                </select>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                                <label for="no_of_children">No of Children</label>
                                                                <input type="number" class="form-control" id="no_of_children" placeholder="" value="<?php echo $user['middle_name'] ?>">
                                                        </div>
                                                </div>

                                                <div class="form-row">
                                                        <div class="form-group col-md-3">
                                                                <label>Habits Cigarette</label>
                                                                <div class="form-group">
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette1" value="option1">
                                                                                <label class="form-check-label" for="habits_cigarette1">Yes</label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette2" value="option2">
                                                                                <label class="form-check-label" for="habits_cigarette2">No</label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette3" value="option3">
                                                                                <label class="form-check-label" for="habits_cigarette3">Occasionally</label>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                                <label for="tobacco_snuff">Tobacco & snuff</label>
                                                                <div class="form-group">
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette1" value="option1">
                                                                                <label class="form-check-label" for="habits_cigarette1">Yes</label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette2" value="option2">
                                                                                <label class="form-check-label" for="habits_cigarette2">No</label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette3" value="option3">
                                                                                <label class="form-check-label" for="habits_cigarette3">Occasionally</label>
                                                                        </div>
                                                                </div>
                                                        </div>
                                                        <div class="form-group col-md-3">
                                                                <label for="alcohol">Alcohol</label>
                                                                <div class="form-group">
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette1" value="option1">
                                                                                <label class="form-check-label" for="habits_cigarette1">Yes</label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette2" value="option2">
                                                                                <label class="form-check-label" for="habits_cigarette2">No</label>
                                                                        </div>
                                                                        <div class="form-check form-check-inline">
                                                                                <input class="form-check-input" value="<?php echo date('Y-m-d', strtotime($user['dob'])); ?>" type="radio" name="habits_cigarette" id="habits_cigarette3" value="option3">
                                                                                <label class="form-check-label" for="habits_cigarette3">Occasionally</label>
                                                                        </div>
                                                                </div>
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
        <script src="./general_history.js"></script>
</body>

</html>