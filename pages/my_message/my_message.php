<!DOCTYPE html>
<html lang="en">

<head>
	<?php include '../../common/head.php'; ?>
	<link rel="stylesheet" href="my_message.css">
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
				<div class="row">
					<!-- <nav class="menu" sty>
						<ul class="items">
							<li class="item">
								<i class="fa fa-home" aria-hidden="true"></i>
							</li>
							<li class="item">
								<i class="fa fa-user" aria-hidden="true"></i>
							</li>
							<li class="item">
								<i class="fa fa-pencil" aria-hidden="true"></i>
							</li>
							<li class="item item-active">
								<i class="fa fa-commenting" aria-hidden="true"></i>
							</li>
							<li class="item">
								<i class="fa fa-file" aria-hidden="true"></i>
							</li>
							<li class="item">
								<i class="fa fa-cog" aria-hidden="true"></i>
							</li>
						</ul>
					</nav> -->

					<section class="discussions">
						<div class="discussion search">
							<div class="searchbar">
								<i class="fa fa-search" aria-hidden="true"></i>
								<input type="text" placeholder="Search..."></input>
							</div>
						</div>
						<div class="discussion message-active">
							<div class="photo" style="background-image: url(https://image.noelshack.com/fichiers/2017/38/2/1505775062-1505606859-portrait-1961529-960-720.jpg);">
								<div class="online"></div>
							</div>
							<div class="desc-contact">
								<p class="name">name 1</p>
								<p class="message">message 1</p>
							</div>
							<div class="timer">12 sec</div>
						</div>

						<div class="discussion">
							<div class="photo" style="background-image: url(http://e0.365dm.com/16/08/16-9/20/theirry-henry-sky-sports-pundit_3766131.jpg?20161212144602);">
								<div class="online"></div>
							</div>
							<div class="desc-contact">
								<p class="name">name 2</p>
								<p class="message">message 2</p>
							</div>
							<div class="timer">3 min</div>
						</div>

						<div class="discussion">
							<div class="photo" style="background-image: url(https://tinyclipart.com/resource/man/man-5.jpg);">
							</div>
							<div class="desc-contact">
								<p class="name">name 3</p>
								<p class="message">message 3</p>
							</div>
							<div class="timer">42 min</div>
						</div>

						<div class="discussion">
							<div class="photo" style="background-image: url(http://thomasdaubenton.xyz/portfolio/images/photo.jpg);">
								<div class="online"></div>
							</div>
							<div class="desc-contact">
								<p class="name">name 4</p>
								<p class="message">message 4</p>
							</div>
							<div class="timer">2 hour</div>
						</div>

						<div class="discussion">
							<div class="photo" style="background-image: url(http://www.boutique-uns.com/uns/185-home_01grid/polo-femme.jpg);">
							</div>
							<div class="desc-contact">
								<p class="name">name 5</p>
								<p class="message">message 5</p>
							</div>
							<div class="timer">1 day</div>
						</div>

						<div class="discussion">
							<div class="photo" style="background-image: url(https://images.pexels.com/photos/979602/pexels-photo-979602.jpeg?auto=compress&cs=tinysrgb&h=350);">
							</div>
							<div class="desc-contact">
								<p class="name">name 6</p>
								<p class="message">message 6</p>
							</div>
							<div class="timer">4 days</div>
						</div>

						<div class="discussion">
							<div class="photo" style="background-image: url(http://static.jbcgroup.com/news/pictures/cc70ae498569ecc11eaeff09224d4ba5.jpg);">
								<div class="online"></div>
							</div>
							<div class="desc-contact">
								<p class="name">name 7</p>
								<p class="message">message 7</p>
							</div>
							<div class="timer">1 week</div>
						</div>
					</section>
					<section class="chat">
						<div class="header-chat">
							<i class="icon fa fa-user-o" aria-hidden="true"></i>
							<p class="name">Megan Leib</p>
							<!-- <i class="icon clickable fa fa-ellipsis-h right" aria-hidden="true"></i> -->
						</div>
						<div class="messages-chat">
							<div class="message">
								<div class="photo" style="background-image: url(https://image.noelshack.com/fichiers/2017/38/2/1505775062-1505606859-portrait-1961529-960-720.jpg);">
									<div class="online"></div>
								</div>
								<p class="text">Hi Doc</p>
							</div>
							<div class="message text-only">
								<p class="text">Nipha Virus is plreding please take necessary precautions</p>
							</div>
							<p class="time"> </p>
							<div class="message text-only">
								<div class="response">
									<p class="text">Thanks for the notication</p>
								</div>
							</div>
							<div class="message text-only">
								<div class="response">
									<p class="text">Kindly let us know if any update on the medicine</p>
								</div>
							</div>
							<p class="response-time time"> 15h04</p>
							<div class="message">
								<div class="photo" style="background-image: url(https://image.noelshack.com/fichiers/2017/38/2/1505775062-1505606859-portrait-1961529-960-720.jpg);">
									<div class="online"></div>
								</div>
								<p class="text">Sure </p>
							</div>
							<p class="time"> 15h09</p>
						</div>
						<div class="footer-chat">
							<i class="icon fa fa-smile-o clickable" style="font-size:25pt;" aria-hidden="true"></i>
							<input type="text" class="write-message" placeholder="Type your message here"></input>
							<i class="icon send fa fa-paper-plane-o clickable" aria-hidden="true"></i>
						</div>
					</section>
				</div>
			</div>
		</main>
	</div>
	<?php include '../../common/footer.php'; ?>
	<script src="./my_message.js"></script>
</body>

</html>