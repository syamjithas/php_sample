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
			$sql = "SELECT * FROM general_history WHERE aadhaar_num='{$aadhaar_num}'";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				$general_history = mysqli_fetch_array($result);
			}
			?>
			<div class="container">

				<form id="settings_from" class="needs-validation" autocomplete="off">
					<div class="form-group">
						<label for="exampleFormControlSelect1">Select Required Role from Dropdown</label>
						<select class="form-control" id="exampleFormControlSelect1">
							<option></option>
							<option>Doctor</option>
							<option>Nurse</option>
							<option>Medical Autority</option>
							<option>Administrator</option>
						</select>
					</div>

					<div class="form-group">
						<label for="exampleFormControlTextarea1">Justification for Role Request</label>
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
					</div>
					<div class="form-group">
						<label for="medical">Reports</label>
						<input type="file" class="filepond" name="filepond" id="report-file-upload" multiple data-max-file-size="3MB" data-max-files="5" />
					</div>
					<button type="submit" class="btn btn-primary">Request</button>
				</form>
			</div>
		</main>
	</div>
	<?php include '../../common/footer.php'; ?>
	<script src="./settings.js"></script>
</body>

</html>