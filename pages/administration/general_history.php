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
					<fieldset id="general_history_fieldset" disabled autocomplete="false">
						<div class="form-row">
							<div class="form-group col-md-3">
								<label for="marital_status">Marital Status</label>
								<select name="marital_status" id="marital_status" class="form-control" required>
									<option <?php if ($general_history['marital_status'] == '') echo "selected"; ?>value="">Choose...</option>
									<option <?php if ($general_history['marital_status'] == 'Single') echo "selected"; ?> value="Single">Single</option>
									<option <?php if ($general_history['marital_status'] == 'Married') echo "selected"; ?> value="Married">Married</option>
									<option <?php if ($general_history['marital_status'] == 'Widowed') echo "selected"; ?> value="Widowed">Widowed</option>
									<option <?php if ($general_history['marital_status'] == 'Separated') echo "selected"; ?> value="Separated">Separated</option>
									<option <?php if ($general_history['marital_status'] == 'Divorced') echo "selected"; ?> value="Divorced">Divorced</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<label for="no_of_children">No of Children</label>
								<input type="number" class="form-control" name="no_of_children" id="no_of_children" placeholder="" value="<?php echo $general_history['no_of_children'] ?>">
							</div>
						</div>

						<div class="form-row">
							<label for="habits_cigarette" class="col-sm-2 col-form-label">Cigarette </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="habits_cigarette" id="habits_cigarette" value=": <?php echo $general_history['habits_cigarette'] ?>">
							</div>
							<label for="tobacco_snuff" class="col-sm-2 col-form-label">Tobacco & snuff </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="tobacco_snuff" id="tobacco_snuff" value=": <?php echo $general_history['tobacco_snuff'] ?>">
							</div>
							<label for="alcohol" class="col-sm-2 col-form-label">Alcohol </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="alcohol" id="alcohol" value=": <?php echo $general_history['alcohol'] ?>">
							</div>
						</div>
						<div class="form-row">
							<label for="diabetes" class="col-sm-2 col-form-label">Diabetes </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="diabetes" id="diabetes" value=": <?php echo $general_history['diabetes'] ?>">
							</div>
							<label for="cardiac_diseases" class="col-sm-2 col-form-label">Cardiac Diseases </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="cardiac_diseases" id="cardiac_diseases" value=": <?php echo $general_history['cardiac_diseases'] ?>">
							</div>
						</div>
						<div class="form-row">
							<label for="endrocrine_others" class="col-sm-2 col-form-label">Endrocrine & Others </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="endrocrine_others" id="endrocrine_others" value=": <?php echo $general_history['endrocrine_others'] ?>">
							</div>
							<label for="eplepsy" class="col-sm-2 col-form-label">Eplepsy </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="eplepsy" id="eplepsy" value=": <?php echo $general_history['eplepsy'] ?>">
							</div>
							<label for="cancer" class="col-sm-2 col-form-label">Cancer </label>
							<div class="col-sm-2">
								<input type="text" readonly class="form-control-plaintext" name="cancer" id="cancer" value=": <?php echo $general_history['cancer'] ?>">
							</div>
						</div>

						<div class="form-group">
							<div class="card border-secondary mb-3">
								<div class="card-header">Medical</div>
								<div class="card-body text-secondary">
									<p class="card-text"><?php echo $general_history['medical']; ?></p>
								</div>
							</div>
							<div class="card border-secondary mb-3">
								<div class="card-header">Surgical</div>
								<div class="card-body text-secondary">
									<p class="card-text"><?php echo $general_history['surgical']; ?></p>
								</div>
							</div>
							<div class="card border-secondary mb-3">
								<div class="card-header">Present Medications</div>
								<div class="card-body text-secondary">
									<p class="card-text"><?php echo $general_history['present_medications']; ?></p>
								</div>
							</div>
							<div class="card border-secondary mb-3">
								<div class="card-header">Drug Allergies</div>
								<div class="card-body text-secondary">
									<p class="card-text"><?php echo $general_history['drug_allergies']; ?></p>
								</div>
							</div>
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