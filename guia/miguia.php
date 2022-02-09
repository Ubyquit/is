<?php
session_start();
$varsesion = $_SESSION["id"];
$user_session = $_SESSION["nombre"];
$user_email = $_SESSION["email"];

if ($varsesion == null || $varsesion = '') {
	echo 'Usted no tiene acceso';
	die();
}
?>


<!DOCTYPE html>
<html>

<head>
	<meta charset="euc-jp">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
	<title>SIS</title>
	<link rel="stylesheet" href="../assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
	<link rel="stylesheet" href="../assets/fonts/fontawesome-all.min.css">
	<!-- NAME: 1 COLUMN - FULL WIDTH -->
	<!--[if gte mso 15]>
        <xml>
            <o:OfficeDocumentSettings>
            <o:AllowPNG/>
            <o:PixelsPerInch>96</o:PixelsPerInch>
            </o:OfficeDocumentSettings>
        </xml>
        <![endif]-->
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>*|MC:SUBJECT|*</title>

	<style type="text/css">
		p {
			margin: 10px 0;
			padding: 0;
		}

		table {
			border-collapse: collapse;
		}

		h1,
		h2,
		h3,
		h4,
		h5,
		h6 {
			display: block;
			margin: 0;
			padding: 0;
		}

		img,
		a img {
			border: 0;
			height: auto;
			outline: none;
			text-decoration: none;
		}

		body,
		#bodyTable,
		#bodyCell {
			height: 100%;
			margin: 0;
			padding: 0;
			width: 100%;
		}

		.mcnPreviewText {
			display: none !important;
		}

		#outlook a {
			padding: 0;
		}

		img {
			-ms-interpolation-mode: bicubic;
		}

		table {
			mso-table-lspace: 0pt;
			mso-table-rspace: 0pt;
		}

		.ReadMsgBody {
			width: 100%;
		}

		.ExternalClass {
			width: 100%;
		}

		p,
		a,
		li,
		td,
		blockquote {
			mso-line-height-rule: exactly;
		}

		a[href^=tel],
		a[href^=sms] {
			color: inherit;
			cursor: default;
			text-decoration: none;
		}

		p,
		a,
		li,
		td,
		body,
		table,
		blockquote {
			-ms-text-size-adjust: 100%;
			-webkit-text-size-adjust: 100%;
		}

		.ExternalClass,
		.ExternalClass p,
		.ExternalClass td,
		.ExternalClass div,
		.ExternalClass span,
		.ExternalClass font {
			line-height: 100%;
		}

		a[x-apple-data-detectors] {
			color: inherit !important;
			text-decoration: none !important;
			font-size: inherit !important;
			font-family: inherit !important;
			font-weight: inherit !important;
			line-height: inherit !important;
		}

		.templateContainer {
			max-width: 600px !important;
		}

		a.mcnButton {
			display: block;
		}

		.mcnImage,
		.mcnRetinaImage {
			vertical-align: bottom;
		}

		.mcnTextContent {
			word-break: break-word;
		}

		.mcnTextContent img {
			height: auto !important;
		}

		.mcnDividerBlock {
			table-layout: fixed !important;
		}

		body,
		#bodyTable {
			background-color: #FAFAFA;
		}

		#bodyCell {
			border-top: 0;
		}

		h1 {
			color: #202020;
			font-family: Helvetica;
			font-size: 26px;
			font-style: normal;
			font-weight: bold;
			line-height: 125%;
			letter-spacing: normal;
			text-align: left;
		}

		h2 {
			color: #202020;
			font-family: Helvetica;
			font-size: 22px;
			font-style: normal;
			font-weight: bold;
			line-height: 125%;
			letter-spacing: normal;
			text-align: left;
		}

		h3 {
			color: #202020;
			font-family: Helvetica;
			font-size: 20px;
			font-style: normal;
			font-weight: bold;
			line-height: 125%;
			letter-spacing: normal;
			text-align: left;
		}

		h4 {
			color: #202020;
			font-family: Helvetica;
			font-size: 18px;
			font-style: normal;
			font-weight: bold;
			line-height: 125%;
			letter-spacing: normal;
			text-align: left;
		}

		#templatePreheader {
			background-color: #FAFAFA;
			background-image: none;
			background-repeat: no-repeat;
			background-position: center;
			background-size: cover;
			border-top: 0;
			border-bottom: 0;
			padding-top: 9px;
			padding-bottom: 9px;
		}

		#templatePreheader .mcnTextContent,
		#templatePreheader .mcnTextContent p {
			color: #656565;
			font-family: Helvetica;
			font-size: 12px;
			line-height: 150%;
			text-align: left;
		}

		#templatePreheader .mcnTextContent a,
		#templatePreheader .mcnTextContent p a {
			color: #656565;
			font-weight: normal;
			text-decoration: underline;
		}

		#templateHeader {
			background-color: #FFFFFF;
			background-image: none;
			background-repeat: no-repeat;
			background-position: center;
			background-size: cover;
			border-top: 0;
			border-bottom: 0;
			padding-top: 9px;
			padding-bottom: 0;
		}

		#templateHeader .mcnTextContent,
		#templateHeader .mcnTextContent p {
			color: #202020;
			font-family: Helvetica;
			font-size: 16px;
			line-height: 150%;
			text-align: left;
		}

		#templateHeader .mcnTextContent a,
		#templateHeader .mcnTextContent p a {
			color: #007C89;
			font-weight: normal;
			text-decoration: underline;
		}

		#templateBody {
			background-color: #FFFFFF;
			background-image: none;
			background-repeat: no-repeat;
			background-position: center;
			background-size: cover;
			border-top: 0;
			border-bottom: 0;
			padding-top: 9px;
			padding-bottom: 9px;
		}

		#templateBody .mcnTextContent,
		#templateBody .mcnTextContent p {
			color: #202020;
			font-family: Helvetica;
			font-size: 16px;
			line-height: 150%;
			text-align: left;
		}

		#templateBody .mcnTextContent a,
		#templateBody .mcnTextContent p a {
			color: #007C89;
			font-weight: normal;
			text-decoration: underline;
		}

		#templateFooter {
			background-color: #FAFAFA;
			background-image: none;
			background-repeat: no-repeat;
			background-position: center;
			background-size: cover;
			border-top: 0;
			border-bottom: 0;
			padding-top: 9px;
			padding-bottom: 9px;
		}

		#templateFooter .mcnTextContent,
		#templateFooter .mcnTextContent p {
			color: #656565;
			font-family: Helvetica;
			font-size: 12px;
			line-height: 150%;
			text-align: center;
		}

		#templateFooter .mcnTextContent a,
		#templateFooter .mcnTextContent p a {
			color: #656565;
			font-weight: normal;
			text-decoration: underline;
		}

		@media only screen and (min-width:768px) {
			.templateContainer {
				width: 600px !important;
			}

		}

		@media only screen and (max-width: 480px) {

			body,
			table,
			td,
			p,
			a,
			li,
			blockquote {
				-webkit-text-size-adjust: none !important;
			}

		}

		@media only screen and (max-width: 480px) {
			body {
				width: 100% !important;
				min-width: 100% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnRetinaImage {
				max-width: 100% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnImage {
				width: 100% !important;
			}

		}

		@media only screen and (max-width: 480px) {

			.mcnCartContainer,
			.mcnCaptionTopContent,
			.mcnRecContentContainer,
			.mcnCaptionBottomContent,
			.mcnTextContentContainer,
			.mcnBoxedTextContentContainer,
			.mcnImageGroupContentContainer,
			.mcnCaptionLeftTextContentContainer,
			.mcnCaptionRightTextContentContainer,
			.mcnCaptionLeftImageContentContainer,
			.mcnCaptionRightImageContentContainer,
			.mcnImageCardLeftTextContentContainer,
			.mcnImageCardRightTextContentContainer,
			.mcnImageCardLeftImageContentContainer,
			.mcnImageCardRightImageContentContainer {
				max-width: 100% !important;
				width: 100% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnBoxedTextContentContainer {
				min-width: 100% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnImageGroupContent {
				padding: 9px !important;
			}

		}

		@media only screen and (max-width: 480px) {

			.mcnCaptionLeftContentOuter .mcnTextContent,
			.mcnCaptionRightContentOuter .mcnTextContent {
				padding-top: 9px !important;
			}

		}

		@media only screen and (max-width: 480px) {

			.mcnImageCardTopImageContent,
			.mcnCaptionBottomContent:last-child .mcnCaptionBottomImageContent,
			.mcnCaptionBlockInner .mcnCaptionTopContent:last-child .mcnTextContent {
				padding-top: 18px !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnImageCardBottomImageContent {
				padding-bottom: 9px !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnImageGroupBlockInner {
				padding-top: 0 !important;
				padding-bottom: 0 !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcnImageGroupBlockOuter {
				padding-top: 9px !important;
				padding-bottom: 9px !important;
			}

		}

		@media only screen and (max-width: 480px) {

			.mcnTextContent,
			.mcnBoxedTextContentColumn {
				padding-right: 18px !important;
				padding-left: 18px !important;
			}

		}

		@media only screen and (max-width: 480px) {

			.mcnImageCardLeftImageContent,
			.mcnImageCardRightImageContent {
				padding-right: 18px !important;
				padding-bottom: 0 !important;
				padding-left: 18px !important;
			}

		}

		@media only screen and (max-width: 480px) {
			.mcpreview-image-uploader {
				display: none !important;
				width: 100% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			h1 {
				font-size: 22px !important;
				line-height: 125% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			h2 {
				font-size: 20px !important;
				line-height: 125% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			h3 {
				font-size: 18px !important;
				line-height: 125% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			h4 {
				font-size: 16px !important;
				line-height: 150% !important;
			}

		}

		@media only screen and (max-width: 480px) {

			.mcnBoxedTextContentContainer .mcnTextContent,
			.mcnBoxedTextContentContainer .mcnTextContent p {
				font-size: 14px !important;
				line-height: 150% !important;
			}

		}

		@media only screen and (max-width: 480px) {
			#templatePreheader {
				display: block !important;
			}

		}

		@media only screen and (max-width: 480px) {

			#templatePreheader .mcnTextContent,
			#templatePreheader .mcnTextContent p {
				font-size: 14px !important;
				line-height: 150% !important;
			}

		}

		@media only screen and (max-width: 480px) {

			#templateHeader .mcnTextContent,
			#templateHeader .mcnTextContent p {
				font-size: 16px !important;
				line-height: 150% !important;
			}

		}

		@media only screen and (max-width: 480px) {

			#templateBody .mcnTextContent,
			#templateBody .mcnTextContent p {
				font-size: 16px !important;
				line-height: 150% !important;
			}

		}

		@media only screen and (max-width: 480px) {

			#templateFooter .mcnTextContent,
			#templateFooter .mcnTextContent p {
				font-size: 14px !important;
				line-height: 150% !important;
			}

		}
	</style>

</head>

<body id="page-top">
	<div id="wrapper">
		<nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
			<div class="container-fluid d-flex flex-column p-0">
				<a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
					<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
					<div class="sidebar-brand-text mx-3"><span>SIS</span></div>
				</a>
				<hr class="sidebar-divider my-0">
				<?php
				include 'include/navbar.php';
				?>
				<div class="text-center d-none d-md-inline"><button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button></div>
			</div>
		</nav>
		<div class="d-flex flex-column" id="content-wrapper">
			<div id="content">

				<!--Navbar principal-->

				<?php
				include 'include/navsearch.php';
				?>

				<div class="container-fluid">
					<div class="card shadow">
						<div class="card-body">
							<div class="row">
								<!--Inicio-->

								<?php

								session_start();
								$varsesion = $_SESSION["id"];

								require_once '../conexion/conexion.php';
								/*Realizar una unión entre la tabla usuarios y la tabla roles y realizar saltos entre campos de ambas tablas para  
                                    visualizar todos los datos requeridos en el modulo de usuarios*/
								$consulta = "SELECT * FROM usuario WHERE id_usr = $varsesion";
								$resultado = mysqli_query($mysqli, $consulta);
								$fila = mysqli_fetch_array($resultado);
								$calorias = $fila["caloriasUsr"];

								if ($calorias >= 400 && $calorias <= 1225) {
									include 'miguia/1200.php';
								} elseif ($calorias >= 1226 && $calorias <= 1275) {
									include 'miguia/1250.php';
								} elseif ($calorias >= 1276 && $calorias <= 1325) {
									include 'miguia/1300.php';
								} elseif ($calorias >= 1326 && $calorias <= 1375) {
									include 'miguia/1350.php';
								} elseif ($calorias >= 1376 && $calorias <= 1425) {
									include 'miguia/1400.php';
								} elseif ($calorias >= 1426 && $calorias <= 1475) {
									include 'miguia/1450.php';
								} elseif ($calorias >= 1476 && $calorias <= 1525) {
									include 'miguia/1500.php';
								} elseif ($calorias >= 1526 && $calorias <= 1575) {
									include 'miguia/1550.php';
								} elseif ($calorias >= 1576 && $calorias <= 1625) {
									include 'miguia/1600.php';
								} elseif ($calorias >= 1626 && $calorias <= 1675) {
									include 'miguia/1650.php';
								} elseif ($calorias >= 1676 && $calorias <= 1725) {
									include 'miguia/1700.php';
								} elseif ($calorias >= 1726 && $calorias <= 1775) {
									include 'miguia/1750.php';
								} elseif ($calorias >= 1776 && $calorias <= 1825) {
									include 'miguia/1800.php';
								} elseif ($calorias >= 1826 && $calorias <= 1875) {
									include 'miguia/1850.php';
								} elseif ($calorias >= 1876 && $calorias <= 1925) {
									include 'miguia/1900.php';
								} elseif ($calorias >= 1926 && $calorias <= 1975) {
									include 'miguia/1950.php';
								} elseif ($calorias > 1976) {
									include 'miguia/2000.php';
								} else {
									echo '<button onclick=location.href="index.php" type="button" class="btn btn-warning btn-lg btn-block" >Tienes pasos pendientes en tu Dashboard</button>';
								} ?>
								<!--Final-->
							</div>
							<footer class="bg-white sticky-footer">
								<div class="container my-auto">
									<div class="text-center my-auto copyright"><span>Copyright © Integración Saludable 2021</span></div>
								</div>
							</footer>
						</div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a>
					</div>
					<script src="../assets/js/jquery.min.js"></script>
					<script src="../assets/bootstrap/js/bootstrap.min.js"></script>
					<script src="../assets/js/chart.min.js"></script>
					<script src="../assets/js/bs-init.js"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.js"></script>
					<script src="../assets/js/theme.js"></script>
</body>

</html>