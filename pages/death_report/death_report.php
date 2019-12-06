<!DOCTYPE html>
<html lang="en">

<head>
	<?php include '../../common/head.php'; ?>
	<?php include '../../common/filepond.php'; ?>
</head>

<body>
	<?php include '../../common/loader.php'; ?>
	<div class="page-wrapper chiller-theme toggled">
		<?php include '../../common/side-nav.php'; ?>
		<main class="page-content">
			<?php include '../../common/header.php'; ?>
			<?php
			$aadhaar_num = base64_decode($_COOKIE["bas"]);
			$sql = "SELECT * FROM medical_status WHERE aadhaar_num='{$aadhaar_num}'";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				$medical_status = mysqli_fetch_array($result);
			}
			?>
			<div class="container">
				<form id="medical_status_from" class="needs-validation" autocomplete="off">
					<fieldset id="medical_status_fieldset" autocomplete="false">
						<h5>History</h5>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="marital_status">Briefed by</label>
								<select name="marital_status" id="marital_status" class="form-control" required>
									<option <?php if ($medical_status['marital_status'] == '') echo "selected"; ?>value="">Choose...</option>
									<option <?php if ($medical_status['marital_status'] == 'Single') echo "selected"; ?> value="Single">Police</option>
									<option <?php if ($medical_status['marital_status'] == 'Married') echo "selected"; ?> value="Married">Ambulance</option>
									<option <?php if ($medical_status['marital_status'] == 'Widowed') echo "selected"; ?> value="Widowed">Carer</option>
									<option <?php if ($medical_status['marital_status'] == 'Separated') echo "selected"; ?> value="Separated">Relative</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="marital_status">Terms of reference</label>
								<select name="marital_status" id="marital_status" class="form-control" required>
									<option <?php if ($medical_status['marital_status'] == '') echo "selected"; ?>value="">Choose...</option>
									<option <?php if ($medical_status['marital_status'] == 'Single') echo "selected"; ?> value="Single">Pronounce life extinct</option>
									<option <?php if ($medical_status['marital_status'] == 'Married') echo "selected"; ?> value="Married">Note injuries</option>
									<option <?php if ($medical_status['marital_status'] == 'Widowed') echo "selected"; ?> value="Widowed">Determine if any suspicious circumstances</option>
									<option <?php if ($medical_status['marital_status'] == 'Separated') echo "selected"; ?> value="Separated">Full examination</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="no_of_children">Last seen alive</label>
								<input class="form-control" type="date" name="no_of_children" id="no_of_children" placeholder="" value="<?php echo $medical_status['no_of_children'] ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="medical">History</label>
							<textarea class="form-control" name="medical" id="medical" rows="5"><?php echo $medical_status['medical']; ?></textarea>
						</div>
						<h5>Examination of body</h5>
						<div class="form-group">
							<label for="medical">Condition of body</label>
							<textarea class="form-control" name="medical" id="medical" rows="10"><?php echo $medical_status['medical']; ?></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="no_of_children">Verification of death by</label>
								<input class="form-control" name="no_of_children" id="no_of_children" placeholder="" value="<?php echo $medical_status['no_of_children'] ?>">
							</div>
							<div class="form-group col-md-4">
								<label>Absence of carotid pulse over one minute</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette']  ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette1" value="Yes">
										<label class="form-check-label" for="habits_cigarette1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette'] ?  "checked" : "";; ?> type="radio" name="habits_cigarette" id="habits_cigarette2" value="No">
										<label class="form-check-label" for="habits_cigarette2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label>Absence of heart sounds over one minute </label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette']  ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette1" value="Yes">
										<label class="form-check-label" for="habits_cigarette1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette'] ?  "checked" : "";; ?> type="radio" name="habits_cigarette" id="habits_cigarette2" value="No">
										<label class="form-check-label" for="habits_cigarette2">No</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Absence of respiratory movements and breath sounds over one minute </label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette']  ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette1" value="Yes">
										<label class="form-check-label" for="habits_cigarette1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['habits_cigarette'] ?  "checked" : "";; ?> type="radio" name="habits_cigarette" id="habits_cigarette2" value="No">
										<label class="form-check-label" for="habits_cigarette2">No</label>
									</div>

								</div>

							</div>
							<div class="form-group col-md-4">
								<label for="alcohol">Fixed, dilated pupils</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol1" value="Yes">
										<label class="form-check-label" for="alcohol1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $medical_status['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol2" value="No">
										<label class="form-check-label" for="alcohol2">No</label>
									</div>

								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-3">
								<label>Presence of hypostasis</label>
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
								<label for="tobacco_snuff">Presence of rigor mortis</label>
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
						<h5>Impression</h5>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Can death be verified?</label>
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
							<div class="form-group col-md-4">
								<label>Are there any suspicious circumstances? </label>
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
							<div class="form-group col-md-4">
								<label for="alcohol">Further action needed </label>
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
						<div class="form-group">
							<label for="medical">Reports</label>
							<input type="file" class="filepond" name="filepond" id="report-file-upload" multiple data-max-file-size="3MB" data-max-files="5" />
						</div>
					</fieldset>
					<div class="form-group">
						<button type="button" class="btn btn-primary" onclick="edit_form(this)">Save as Draft</button>
						<button type="submit" class="btn btn-success" onclick="save_form(this)">Save</button>
					</div>
				</form>
			</div>
		</main>
	</div>
	<?php include '../../common/footer.php'; ?>
	<script src="./death_report.js"></script>
</body>

</html>