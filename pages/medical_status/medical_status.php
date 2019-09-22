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
			<?php
			$aadhaar_num = base64_decode($_COOKIE["bas"]);
			$sql = "SELECT * FROM general_history WHERE aadhaar_num='{$aadhaar_num}'";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				$general_history = mysqli_fetch_array($result);
			}
			?>
			<div class="container">
				<form id="general_history_from" class="needs-validation" autocomplete="off">
					<fieldset id="general_history_fieldset" autocomplete="false">
						<div class="form-row">
							<div class="form-group col-md-2">
								<label for="marital_status">Height</label>
								<div class="input-group">
									<select name="marital_status" id="marital_status" class="form-control" required>
										<?php

										for ($i = 0; $i < 300; $i++) {
											echo '<option ' . ($user['state'] == $i ? 'selected="selected"' : '') . '>' . $i . '</option>';
										}
										?>
									</select>
									<div class="input-group-append">
										<span class="input-group-text" id="basic-addon2">cm</span>
									</div>
								</div>
							</div>

							<div class="form-group col-md-2">
								<label for="marital_status">Weight</label>
								<div class="input-group">
									<select name="marital_status" id="marital_status" class="form-control" required>
										<?php

										for ($i = 0; $i < 700; $i++) {
											echo '<option ' . ($user['state'] == $i ? 'selected="selected"' : '') . '>' . $i . '</option>';
										}
										?>
									</select>
									<div class="input-group-append">
										<span class="input-group-text" id="basic-addon2">kg</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-2">
								<label for="marital_status">Pulse</label>
								<div class="input-group">
									<select name="marital_status" id="marital_status" class="form-control" required>
										<?php

										for ($i = 0; $i < 300; $i++) {
											echo '<option ' . ($user['state'] == $i ? 'selected="selected"' : '') . '>' . $i . '</option>';
										}
										?>
									</select>
									<div class="input-group-append">
										<span class="input-group-text" id="basic-addon2">/Minutes</span>
									</div>
								</div>
							</div>
							<div class="form-group col-md-4">
								<label for="marital_status">B.P</label>
								<div class="input-group">
									<input type="text" aria-label="First name" class="form-control">
									<div class="input-group-append">
										<span class="input-group-text">/</span>
									</div>
									<input type="text" aria-label="Last name" class="form-control">
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
										<input class="form-check-input" <?php echo $general_history['habits_cigarette']  ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette1" value="Yes">
										<label class="form-check-label" for="habits_cigarette1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['habits_cigarette'] ?  "checked" : "";; ?> type="radio" name="habits_cigarette" id="habits_cigarette2" value="No">
										<label class="form-check-label" for="habits_cigarette2">No</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['habits_cigarette'] ?  "checked" : ""; ?> type="radio" name="habits_cigarette" id="habits_cigarette3" value="Occasionally">
										<label class="form-check-label" for="habits_cigarette3">Occasionally</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="tobacco_snuff">Tobacco & snuff</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['tobacco_snuff'] ?  "checked" : "";  ?> type="radio" name="tobacco_snuff" id="tobacco_snuff1" value="Yes">
										<label class="form-check-label" for="tobacco_snuff1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['tobacco_snuff'] ?  "checked" : "";  ?> type="radio" name="tobacco_snuff" id="tobacco_snuff2" value="No">
										<label class="form-check-label" for="tobacco_snuff2">No</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['tobacco_snuff'] ?  "checked" : ""; ?> type="radio" name="tobacco_snuff" id="tobacco_snuff3" value="Occasionally">
										<label class="form-check-label" for="tobacco_snuff3">Occasionally</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="alcohol">Alcohol</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol1" value="Yes">
										<label class="form-check-label" for="alcohol1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol2" value="No">
										<label class="form-check-label" for="alcohol2">No</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['alcohol'] ?  "checked" : ""; ?> type="radio" name="alcohol" id="alcohol3" value="Occasionally">
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
										<input class="form-check-input" <?php echo $general_history['diabetes'] ?  "checked" : ""; ?> type="radio" name="diabetes" id="diabetes1" value="Yes">
										<label class="form-check-label" for="diabetes1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['diabetes'] ?  "checked" : ""; ?> type="radio" name="diabetes" id="diabetes2" value="No">
										<label class="form-check-label" for="diabetes2">No</label>
									</div>

								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="tobacco_snuff">Cardiac Diseases</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['cardiac_diseases'] ?  "checked" : ""; ?> type="radio" name="cardiac_diseases" id="cardiac_diseases1" value="Yes">
										<label class="form-check-label" for="cardiac_diseases1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['cardiac_diseases'] ?  "checked" : ""; ?> type="radio" name="cardiac_diseases" id="cardiac_diseases2" value="No">
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
										<input class="form-check-input" <?php echo $general_history['endrocrine_others'] ?  "checked" : ""; ?> type="radio" name="endrocrine_others" id="endrocrine_others1" value="Yes">
										<label class="form-check-label" for="endrocrine_others1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['endrocrine_others'] ?  "checked" : ""; ?> type="radio" name="endrocrine_others" id="endrocrine_others2" value="No">
										<label class="form-check-label" for="endrocrine_others2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label>Eplepsy</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['eplepsy'] ?  "checked" : ""; ?> type="radio" name="eplepsy" id="eplepsy1" value="Yes">
										<label class="form-check-label" for="eplepsy1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['eplepsy'] ?  "checked" : ""; ?> type="radio" name="eplepsy" id="eplepsy2" value="No">
										<label class="form-check-label" for="eplepsy2">No</label>
									</div>
								</div>
							</div>
							<div class="form-group col-md-3">
								<label for="alcohol">Cancer</label>
								<div class="form-group">
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['cancer'] ?  "checked" : ""; ?> type="radio" name="cancer" id="cancer1" value="Yes">
										<label class="form-check-label" for="cancer1">Yes</label>
									</div>
									<div class="form-check form-check-inline">
										<input class="form-check-input" <?php echo $general_history['cancer'] ?  "checked" : ""; ?> type="radio" name="cancer" id="cancer2" value="No">
										<label class="form-check-label" for="cancer2">No</label>
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="medical">Medical</label>
							<textarea class="form-control" name="medical" id="medical" rows="5"><?php echo $general_history['medical']; ?></textarea>
						</div>
						<div class="form-group">
							<label for="surgical">Surgical</label>
							<textarea class="form-control" name="surgical" id="surgical" rows="5"><?php echo $general_history['surgical']; ?></textarea>
						</div>
						<div class="form-group">
							<label for="present_medications">Present Medications</label>
							<textarea class="form-control" name="present_medications" id="present_medications" rows="5"><?php echo $general_history['present_medications']; ?></textarea>
						</div>
						<div class="form-group">
							<label for="drug_allergies Allergies">Drug Allergies</label>
							<textarea class="form-control" name="drug_allergies" id="drug_allergies" rows="5"><?php echo $general_history['drug_allergies']; ?></textarea>
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
	<script src="./general_history.js"></script>
</body>

</html>