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
			$sql = "SELECT * FROM death_report WHERE aadhaar_num='{$aadhaar_num}'";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				$death_report = mysqli_fetch_array($result);
			}
			?>
			<div class="container">
				<form id="death_report_from" class="needs-validation" autocomplete="off">
					<fieldset id="death_report_fieldset" autocomplete="false">
						<h5>History</h5>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="briefed_by">Briefed by</label>
								<select name="briefed_by" id="briefed_by" class="form-control" required>
									<option <?php if ($death_report['briefed_by'] == '') echo "selected"; ?>value="">Choose...</option>
									<option <?php if ($death_report['briefed_by'] == '1') echo "selected"; ?> value="1">Police</option>
									<option <?php if ($death_report['briefed_by'] == '2') echo "selected"; ?> value="2">Ambulance</option>
									<option <?php if ($death_report['briefed_by'] == '3') echo "selected"; ?> value="3">Carer</option>
									<option <?php if ($death_report['briefed_by'] == '4') echo "selected"; ?> value="4">Relative</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="terms_of_reference">Terms of reference</label>
								<select name="terms_of_reference" id="terms_of_reference" class="form-control" required>
									<option <?php if ($death_report['terms_of_reference'] == '') echo "selected"; ?>value="">Choose...</option>
									<option <?php if ($death_report['terms_of_reference'] == '1') echo "selected"; ?> value="1">Pronounce life extinct</option>
									<option <?php if ($death_report['terms_of_reference'] == '2') echo "selected"; ?> value="2">Note injuries</option>
									<option <?php if ($death_report['terms_of_reference'] == '3') echo "selected"; ?> value="3">Determine if any suspicious circumstances</option>
									<option <?php if ($death_report['terms_of_reference'] == '4') echo "selected"; ?> value="4">Full examination</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label for="last_seen_alive">Last seen alive</label>
								<input class="form-control" type="date" name="last_seen_alive" id="last_seen_alive" placeholder="" value="<?php echo $death_report['last_seen_alive'] ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="history">History</label>
							<textarea class="form-control" name="history" id="history" rows="5"><?php echo $death_report['history']; ?></textarea>
						</div>
						<h5>Examination of body</h5>
						<div class="form-group">
							<label for="condition_of_body">Condition of body</label>
							<textarea class="form-control" name="condition_of_body" id="condition_of_body" rows="10"><?php echo $death_report['condition_of_body']; ?></textarea>
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label for="verification_of_death">Verification of death by</label>
								<input class="form-control" name="verification_of_death" id="verification_of_death" placeholder="" value="<?php echo $death_report['verification_of_death'] ?>">
							</div>
							<div class="form-group col-md-4">
								<label>Absence of carotid pulse over one minute</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['absence_of_carotid_pulse']  ?  "checked" : ""; ?> type="radio" name="absence_of_carotid_pulse" id="absence_of_carotid_pulse1" value="Yes">
										<label class="form-check-label" for="absence_of_carotid_pulse1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['absence_of_carotid_pulse'] ?  "checked" : "";; ?> type="radio" name="absence_of_carotid_pulse" id="absence_of_carotid_pulse2" value="No">
										<label class="form-check-label" for="absence_of_carotid_pulse2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label>Absence of heart sounds over one minute </label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['absence_of_heart_sounds']  ?  "checked" : ""; ?> type="radio" name="absence_of_heart_sounds" id="absence_of_heart_sounds1" value="Yes">
										<label class="form-check-label" for="absence_of_heart_sounds1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['absence_of_heart_sounds'] ?  "checked" : "";; ?> type="radio" name="absence_of_heart_sounds" id="absence_of_heart_sounds2" value="No">
										<label class="form-check-label" for="absence_of_heart_sounds2">No</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Absence of respiratory movements and breath sounds over one minute </label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['absence_of_respiratory']  ?  "checked" : ""; ?> type="radio" name="absence_of_respiratory" id="absence_of_respiratory1" value="Yes">
										<label class="form-check-label" for="absence_of_respiratory1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['absence_of_respiratory'] ?  "checked" : "";; ?> type="radio" name="absence_of_respiratory" id="absence_of_respiratory2" value="No">
										<label class="form-check-label" for="absence_of_respiratory2">No</label>
									</div>

								</div>

							</div>
							<div class="form-group col-md-4">
								<label for="fixed_dilated_pupils">Fixed, dilated pupils</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['fixed_dilated_pupils'] ?  "checked" : ""; ?> type="radio" name="fixed_dilated_pupils" id="fixed_dilated_pupils1" value="Yes">
										<label class="form-check-label" for="fixed_dilated_pupils1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['fixed_dilated_pupils'] ?  "checked" : ""; ?> type="radio" name="fixed_dilated_pupils" id="fixed_dilated_pupils2" value="No">
										<label class="form-check-label" for="fixed_dilated_pupils2">No</label>
									</div>

								</div>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-3">
								<label>Presence of hypostasis</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['presence_of_hypostasis'] ?  "checked" : ""; ?> type="radio" name="presence_of_hypostasis" id="presence_of_hypostasis1" value="Yes">
										<label class="form-check-label" for="presence_of_hypostasis1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['presence_of_hypostasis'] ?  "checked" : ""; ?> type="radio" name="presence_of_hypostasis" id="presence_of_hypostasis2" value="No">
										<label class="form-check-label" for="presence_of_hypostasis2">No</label>
									</div>

								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="tobacco_snuff">Presence of rigor mortis</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['presence_of_rigor_mortis'] ?  "checked" : ""; ?> type="radio" name="presence_of_rigor_mortis" id="presence_of_rigor_mortis1" value="Yes">
										<label class="form-check-label" for="presence_of_rigor_mortis1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['presence_of_rigor_mortis'] ?  "checked" : ""; ?> type="radio" name="presence_of_rigor_mortis" id="presence_of_rigor_mortis2" value="No">
										<label class="form-check-label" for="presence_of_rigor_mortis2">No</label>
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
										<input class="form-check-input" <?php echo $death_report['can_death_be_verified'] ?  "checked" : ""; ?> type="radio" name="can_death_be_verified" id="can_death_be_verified1" value="Yes">
										<label class="form-check-label" for="can_death_be_verified1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['can_death_be_verified'] ?  "checked" : ""; ?> type="radio" name="can_death_be_verified" id="can_death_be_verified2" value="No">
										<label class="form-check-label" for="can_death_be_verified2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label>Are there any suspicious circumstances? </label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['suspicious_circumstances'] ?  "checked" : ""; ?> type="radio" name="suspicious_circumstances" id="suspicious_circumstances1" value="Yes">
										<label class="form-check-label" for="suspicious_circumstances1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['suspicious_circumstances'] ?  "checked" : ""; ?> type="radio" name="suspicious_circumstances" id="suspicious_circumstances2" value="No">
										<label class="form-check-label" for="suspicious_circumstances2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label for="fixed_dilated_pupils">Further action needed </label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['further_action_needed'] ?  "checked" : ""; ?> type="radio" name="further_action_needed" id="further_action_needed1" value="Yes">
										<label class="form-check-label" for="further_action_needed1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $death_report['further_action_needed'] ?  "checked" : ""; ?> type="radio" name="further_action_needed" id="further_action_needed2" value="No">
										<label class="form-check-label" for="further_action_needed2">No</label>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="details">Details</label>
							<textarea class="form-control" name="details" id="details" rows="5"><?php echo $death_report['details']; ?></textarea>
						</div>
						<div class="form-group">
							<label for="medical">Reports</label>
							<input type="file" class="filepond" name="filepond" id="report-file-upload" multiple data-max-file-size="3MB" data-max-files="5" />
						</div>
					</fieldset>
					<div class="form-group">
						<button type="button" class="btn btn-primary" onclick="edit_form(this)">Edit</button>
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