<!doctype html>
<html lang="en">

<head>
	<title>CV.SURYA MITRA SEJAHTERA</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="./assets-login/css/style.css">

</head>

<body>
	<?php
	if (isset($_COOKIE['emailPos'])) {
		$emailSession = base64_decode($_COOKIE['emailPos']);
	} else {
		$emailSession = "";
	}

	if (isset($_COOKIE['passPos'])) {
		$passSession = base64_decode($_COOKIE['passPos']);
	} else {
		$passSession = "";
	}
	?>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="wrap">
						<div class="login-wrap p-4 p-md-5">
							<div class="d-flex">
								<div class="w-100">
									<h3 class="mb-4">MANAGEMENT SERVICE & PENJUALAN SPAREPART KOMPUTER</h3>
								</div>
							</div>
							<form action="aksi/login" method="post" class="signin-form">
								<div class="form-group mt-3">
									<input type="text" class="form-control" name="user_email" required>
									<label class="form-control-placeholder" for="username">Email</label>
								</div>
								<div class="form-group">
									<input id="password-field" type="password" class="form-control" name="user_password" required>
									<label class="form-control-placeholder" for="password">Password</label>
									<span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
								</div>
								<div class="form-group">
									<button type="submit" class="form-control btn btn-primary rounded submit px-3">Sign In</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="./assets-login/js/jquery.min.js"></script>
	<script src="./assets-login/js/popper.js"></script>
	<script src="./assets-login/js/bootstrap.min.js"></script>
	<script src="./assets-login/js/main.js"></script>

</body>

</html>