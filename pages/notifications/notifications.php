<!DOCTYPE html>
<html lang="en">

<head>
	<?php include '../../common/head.php'; ?>
	<link rel="stylesheet" href="notification.css">
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
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Alert</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Request</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Complted Request</a>
					</li>
				</ul>
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
						<div class="alert alert-warning" role="alert">
							<h4 class="alert-heading">Nipah spreading!</h4>
							<p>
								Nipah virus is a zoonotic virus (it is transmitted from animals to humans) and can also be transmitted through contaminated food or directly between people. In infected people, it causes a range of illnesses from asymptomatic (subclinical) infection to acute respiratory illness and fatal encephalitis. The virus can also cause severe disease in animals such as pigs, resulting in significant economic losses for farmers.</p>
							<hr>
							<p class="mb-0">Be Alert</p>
						</div>
					</div>
					<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
						asdasdasd
						asdasd

						asdasd
					</div>
					<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
						asdasd
						asdasd
						asdasd
						asdasd
						sad
					</div>
				</div>
			</div>
		</main>
	</div>
	<?php include '../../common/footer.php'; ?>
	<script src="./general_history.js"></script>
</body>

</html>