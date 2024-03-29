<!DOCTYPE html>
<html lang="en">
<?php

if (isset($_GET["medical_status_id"])) {
	$medical_status_id = $_GET["medical_status_id"];
	$hideSideNav = true;
	$hideHeader = true;
	$disableForm = true;
	$hideSaveButton = true;
}
?>

<head>
	<?php include '../../common/head.php'; ?>
	<?php include '../../common/filepond.php'; ?>
</head>

<body>
	<?php include '../../common/loader.php'; ?>
	<div class="page-wrapper chiller-theme toggled">
		<?php include '../../common/side-nav.php'; ?>
		<main class="page-content" <?php if (isset($hideSideNav) && $hideSideNav) echo 'style="padding-left:0px;"'; ?>>
			<?php if (isset($hideHeader) && !$hideHeader)  include '../../common/header.php'; ?>
			<?php
				$aadhaar_num_bkp = $aadhaar_num;
				$aadhaar_num = isset($paadhaar_num) ? $paadhaar_num : $aadhaar_num;
				$aadhaar_num = base64_decode($_COOKIE["bas"]);
				if (isset($medical_status_id)) {
					$sql = "SELECT * FROM medical_status WHERE medical_status_id='{$medical_status_id}'";
				} else {
					$sql = "SELECT * FROM medical_status WHERE aadhaar_num='{$aadhaar_num}'";
				}
				$result = mysqli_query($conn, $sql);
				if (mysqli_num_rows($result) > 0) {
					$medical_status = mysqli_fetch_array($result);
				}
			?>
			<div class="container">
				<form id="medical_status_from" class="needs-validation" autocomplete="off">
					<fieldset id="medical_status_fieldset" autocomplete="false" <?php if (isset($disableForm) && $disableForm) echo 'disabled="disabled"'; ?>>
						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="height">Height</label>
								<div class="input-group">
									<select name="height" id="height" class="form-control" required>
										<?php
																																			for ($i = 0; $i < 300; $i++) {
																																				echo '<option ' . ($medical_status['height'] == $i ? 'selected="selected"' : '') . '>' . $i . '</option>';
																																			}
										?>
									</select>
									<div class="input-group-append">
										<span class="input-group-text">cm</span>
									</div>
								</div>
							</div>

							<div class="form-group col-md-2">
								<label for="weight">Weight</label>
								<div class="input-group">
									<select name="weight" id="weight" class="form-control" required>
										<?php

																																			for ($i = 0; $i < 700; $i++) {
																																				echo '<option ' . ($medical_status['weight'] == $i ? 'selected="selected"' : '') . '>' . $i . '</option>';
																																			}
										?>
									</select>
									<div class="input-group-append">
										<span class="input-group-text">kg</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-2">
								<label for="pulse">Pulse</label>
								<div class="input-group">
									<select name="pulse" id="pulse" class="form-control" required>
										<?php

												for ($i = 0; $i < 300; $i++) {
													echo '<option ' . ($medical_status['pulse'] == $i ? 'selected="selected"' : '') . '>' . $i . '</option>';
												}
										?>
									</select>
									<div class="input-group-append">
										<span class="input-group-text">/Minutes</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label for="marital_status">B.P</label>
								<div class="input-group">
									<input type="text" aria-label="bp_mm" name="bp_mm" id="bp_mm" value="<?php echo $medical_status['bp_mm']; ?>" class="form-control">
									<div class="input-group-append">
										<span class="input-group-text">/</span>
									</div>
									<input type="text" aria-label="bp_hg" name="bp_hg" id="bp_hg" value="<?php echo $medical_status['bp_hg']; ?>" class="form-control">
									<div class="input-group-append">
										<span class="input-group-text">mm/Hg</span>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-3">
								<label for="marital_status">Marital Status</label>
								<select name="marital_status" id="marital_status" class="form-control" required>
									<option <?php if ($medical_status['marital_status'] == '') echo "selected"; ?>value="">Choose...</option>
									<option <?php if ($medical_status['marital_status'] == 'Single') echo "selected"; ?> value="Single">Single</option>
									<option <?php if ($medical_status['marital_status'] == 'Married') echo "selected"; ?> value="Married">Married</option>
									<option <?php if ($medical_status['marital_status'] == 'Widowed') echo "selected"; ?> value="Widowed">Widowed</option>
									<option <?php if ($medical_status['marital_status'] == 'Separated') echo "selected"; ?> value="Separated">Separated</option>
									<option <?php if ($medical_status['marital_status'] == 'Divorced') echo "selected"; ?> value="Divorced">Divorced</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="no_of_children">No of Children</label>
								<input type="number" class="form-control" name="no_of_children" id="no_of_children" placeholder="" value="<?php echo $medical_status['no_of_children'] ?>">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-3">
								<label>Cigarette</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette']  ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette1" value="Yes">
										<label class="form-check-label" for="habits_cigarette1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette'] ?  "checked" : "";; ?> type="radio" name="habits_cigarette" id="habits_cigarette2" value="No">
										<label class="form-check-label" for="habits_cigarette2">No</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette'] ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette3" value="Occasionally">
										<label class="form-check-label" for="habits_cigarette3">Occasionally</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="tobacco_snuff">Tobacco & snuff</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['tobacco_snuff'] ?  "checked" : "";  ?> type="radio" name="tobacco_snuff" id="tobacco_snuff1" value="Yes">
										<label class="form-check-label" for="tobacco_snuff1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['tobacco_snuff'] ?  "checked" : "";  ?> type="radio" name="tobacco_snuff" id="tobacco_snuff2" value="No">
										<label class="form-check-label" for="tobacco_snuff2">No</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['tobacco_snuff'] ?  "checked" : ""; ?> type="radio" name="tobacco_snuff" id="tobacco_snuff3" value="Occasionally">
										<label class="form-check-label" for="tobacco_snuff3">Occasionally</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="alcohol">Alcohol</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol1" value="Yes">
										<label class="form-check-label" for="alcohol1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol2" value="No">
										<label class="form-check-label" for="alcohol2">No</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol3" value="Occasionally">
										<label class="form-check-label" for="alcohol3">Occasionally</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-3">
								<label>Diabetes</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['diabetes'] ?  "checked" : ""; ?> type="radio" name="diabetes" id="diabetes1" value="Yes">
										<label class="form-check-label" for="diabetes1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['diabetes'] ?  "checked" : ""; ?> type="radio" name="diabetes" id="diabetes2" value="No">
										<label class="form-check-label" for="diabetes2">No</label>
									</div>

								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="tobacco_snuff">Cardiac Diseases</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['cardiac_diseases'] ?  "checked" : ""; ?> type="radio" name="cardiac_diseases" id="cardiac_diseases1" value="Yes">
										<label class="form-check-label" for="cardiac_diseases1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['cardiac_diseases'] ?  "checked" : ""; ?> type="radio" name="cardiac_diseases" id="cardiac_diseases2" value="No">
										<label class="form-check-label" for="cardiac_diseases2">No</label>
									</div>

								</div>
							</div>

						</div>
						<div class="form-row">
							<div class="form-group col-md-3">
								<label>Endrocrine & Others</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['endrocrine_others'] ?  "checked" : ""; ?> type="radio" name="endrocrine_others" id="endrocrine_others1" value="Yes">
										<label class="form-check-label" for="endrocrine_others1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['endrocrine_others'] ?  "checked" : ""; ?> type="radio" name="endrocrine_others" id="endrocrine_others2" value="No">
										<label class="form-check-label" for="endrocrine_others2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label>Eplepsy</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['eplepsy'] ?  "checked" : ""; ?> type="radio" name="eplepsy" id="eplepsy1" value="Yes">
										<label class="form-check-label" for="eplepsy1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['eplepsy'] ?  "checked" : ""; ?> type="radio" name="eplepsy" id="eplepsy2" value="No">
										<label class="form-check-label" for="eplepsy2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label>Cancer</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['cancer'] ?  "checked" : ""; ?> type="radio" name="cancer" id="cancer1" value="Yes">
										<label class="form-check-label" for="cancer1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['cancer'] ?  "checked" : ""; ?> type="radio" name="cancer" id="cancer2" value="No">
										<label class="form-check-label" for="cancer2">No</label>
									</div>
								</div>
							</div>
						</div>
						<?php if (isset($hideSaveButton) && $hideSaveButton) { ?>
							<div class="form-group">
								<div class="card border-secondary mb-3">
									<div class="card-header">Medical</div>
									<div class="card-body text-secondary">
										<p class="card-text"><?php echo $medical_status['medical']; ?></p>
									</div>
								</div>
								<div class="card border-secondary mb-3">
									<div class="card-header">Surgical</div>
									<div class="card-body text-secondary">
										<p class="card-text"><?php echo $medical_status['surgical']; ?></p>
									</div>
								</div>
								<div class="card border-secondary mb-3">
									<div class="card-header">Present Medications</div>
									<div class="card-body text-secondary">
										<p class="card-text"><?php echo $medical_status['present_medications']; ?></p>
									</div>
								</div>
								<div class="card border-secondary mb-3">
									<div class="card-header">Drug Allergies</div>
									<div class="card-body text-secondary">
										<p class="card-text"><?php echo $medical_status['drug_allergies']; ?></p>
									</div>
								</div>
							</div>
						<?php } else { ?>
							<div class="form-group">
								<label for="medical">Present Medical</label>
								<textarea class="form-control" name="medical" id="medical" rows="5"><?php echo $medical_status['medical']; ?></textarea>
							</div>
							<div class="form-group">
								<label for="surgical">Present Surgical</label>
								<textarea class="form-control" name="surgical" id="surgical" rows="5"><?php echo $medical_status['surgical']; ?></textarea>
							</div>
							<div class="form-group">
								<label for="present_medications">Present Medications</label>
								<textarea class="form-control" name="present_medications" id="present_medications" rows="5"><?php echo $medical_status['present_medications']; ?></textarea>
							</div>
							<div class="form-group">
								<label for="drug_allergies Allergies">Present Drug Allergies</label>
								<textarea class="form-control" name="drug_allergies" id="drug_allergies" rows="5"><?php echo $medical_status['drug_allergies']; ?></textarea>
							</div>
						<?php } ?>
						<?php if ($_view && $user_auth['role'] == 'doctor') { ?>
							<div class="form-group col-md-3">
								<label for="alive">Alive</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alive'] ?  "checked" : "";  ?> type="radio" name="alive" id="alive1" value="Yes">
										<label class="form-check-label" for="alive1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alive'] ?  "checked" : "";  ?> type="radio" name="alive" id="alive2" value="No">
										<label class="form-check-label" for="alive2">No</label>
									</div>
								</div>
							</div>
						<?php } ?>
						<div class="form-group">
							<label for="medical">Reports</label>
							<input type="file" class="filepond" name="filepond" id="report-file-upload" multiple data-max-file-size="3MB" data-max-files="5" />
						</div>
						<input type="hidden" name="latitude" id="latitude">
						<input type="hidden" name="longitude" id="longitude">

					</fieldset>
					<div class="form-group" <?php if (isset($hideSaveButton) && $hideSaveButton) echo 'style="display:none"'; ?>>
						<button type="button" class="btn btn-primary" onclick="edit_form(this)">Save as Draft</button>
						<button type="submit" class="btn btn-success" onclick="save_form(this)">Save</button>
					</div>
				</form>
			</div>
		</main>
	</div>
	<?php include '../../common/footer.php'; ?>
	<script src="./medical_status.js"></script>
	<?php
		$aadhaar_num  = $aadhaar_num_bkp;
	?>
</body>

</html>