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
								<label for="alcohol">Cancer</label>
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
							<label for="medical">Present  Medical</label>
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
	<script src="./medical_status.js"></script>
</body>

</html>