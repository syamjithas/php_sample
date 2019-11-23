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
			$sql = "SELECT aadhaar_num FROM medical_status WHERE aadhaar_num ='{$aadhaar_num}'";
			$result = mysqli_query($conn, $sql);
			$length = mysqli_num_rows($result);
			$numberOfPages = 1;
			if ($length > 10) {
				$numberOfPages = $length / 10;
			}
			$curretPageNumber = 1;
			if (isset($_COOKIE["curretPageNumber"])) {
				setcookie("curretPageNumber", 1, time() + 3600, "/");
			}
			$max = $length > 10 ? $curretPageNumber * 10 : $length;
			$min = $length > 10 ? $max - 9 : 1;

			$sql = "SELECT * FROM medical_status WHERE aadhaar_num ='{$aadhaar_num}' ORDER BY created_date DESC LIMIT {$min}, {$max}";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				$medical_status = $result;
			}
			?>
			<div class="container">
				<form id="general_history_from" class="needs-validation" autocomplete="off">
					<fieldset id="general_history_fieldset" disabled autocomplete="false">
						<nav aria-label="Page navigation example">
							<?php
							if ($length > 10) {
								echo '<ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">Previous</a></li>';
								// <li class="page-item"><a class="page-link" href="#">1</a></li>
								// <li class="page-item"><a class="page-link" href="#">2</a></li>
								// <li class="page-item"><a class="page-link" href="#">3</a></li>
								echo '<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>';
							}



							?>
							<!-- <ul class="pagination">
								<li class="page-item"><a class="page-link" href="#">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul> -->
						</nav>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">#</th>
									<th scope="col">Date</th>
									<th scope="col">medical</th>
									<th scope="col">Open</th>
								</tr>
							</thead>
							<tbody>
								<?php

								$rowNumber = 1;
								while ($row = mysqli_fetch_assoc($medical_status)) {
									echo "<tr>
                                			<td>{$rowNumber}</td>
                                			<td>{$row['created_date']}</td>
											<td>{$row['medical']}</td>
											<td><a href='#' data-toggle='modal' data-target='.bd-example-modal-lg' onclick='openMedicalStatus({$row['medical_status_id']})'>link</a></td>
                            			</tr>";
									$rowNumber++;
								}
								?>
							</tbody>
						</table>
					</fieldset>

					<div class="modal fade bd-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
						<div class="modal-dialog modal-full">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title" id="myLargeModalLabel">Medical Status</h4>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">×</span>
									</button>
								</div>
								<iframe id="iframe-medical" src="" style="height:600px;"></iframe>
							</div>
						</div>
					</div>

				</form>
			</div>
		</main>
	</div>
	<?php include '../../common/footer.php'; ?>
	<script src="./medical_history.js"></script>
</body>

</html>