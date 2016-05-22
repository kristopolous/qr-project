<?
  function gallery($list) {
    $res = array();
    foreach($list as $pdf) {
      $res[] = "<li><a href='pdf/$pdf.pdf'><img src='pdf/$pdf.jpg'></a></li>";
    }
    return "<ul>" . implode("\n", $res) . "</ul>";
  }
?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Project Poetry LA</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
    <meta content="Project Poetry: Public Art in Public Space" property="og:title" />
    <meta content="Help spread an appreciation for art and poetry" property="og:description" />
    <meta content="Help spread an appreciation for art and poetry" name="description" />
    <meta content="http://www.projectpoetryla.org/images/middle-spread.jpg" property="og:image" />
    <meta content="http://www.projectpoetryla.org/images/middle-spread.jpg" name="thumbnail" />
    <meta content="http://www.projectpoetryla.org/" property="og:url" />
	</head>
	<body class="landing">
		<div id="page-wrapper">

			<!-- Banner -->
				<section id="banner">
					<h2>Project Poetry LA</h2>
					<p>Bring public art into public space</p>
				</section>

			<!-- Main -->
				<section id="main" class="container">

					<section class="box special">
						<header class="major">
							<h2>PDFs for Download</h2>
              <p>Designed for Avery 5164 compatible sheets (3 1/3" x 4").<br/>
              Available <a href="https://www.google.com/search?q=avery+5164&tbm=shop">online</a> and at any office supply store.</p>
						</header>
						<span class="image featured"><img src="images/middle-spread.jpg" alt="" /></span>
					</section>

					<section class="box special features">
						<div class="features-row">
							<section>
								<h3>QR Poetry</h3>
								<p>Classic Poetry in QR codes</p>
<?= gallery(array('qr-1', 'qr-2')); ?>
							</section>
							<section>
								<h3>Art</h3>
								<p>Fine Art covering entire stickers</p>
<?= gallery(array('art-0', 'art-1', 'art-2')); ?>
							</section>
						</div>
						<div class="features-row">
							<section>
								<h3>Text Poetry</h3>
								<p>Human-readable versions of the QR Project</p>
                <p>(may 21, 2016: Coming soon)</p>
							</section>
							<section>
								<h3>Engagement</h3>
                <p>Prompts with large blank space for community engagement</p>
<?= gallery(array('prompt-0', 'prompt-1')); ?>
							</section>
						</div>
					</section>


				</section>

			<!-- CTA -->
				<section id="cta">

					<h2>Free Stickers by Mail</h2>
					<p>Receive a free sheet of six stickers to put up in your own community. They will be a mix of <a href="gallery.php">all the different styles</a>.</p>

					<form method=post action=address.php>
						<div class="row uniform 50%" style='text-align:center'>
              <div class="8u 12u(mobilep)" style='display:inline-block;float:none'>
                
								<input type="text" name="name" id="name" placeholder="Your Name" />
								<input type="text" name="address[]" id="address_1" placeholder="Address Line 1" />
								<input type="text" name="address[]" id="address_2" placeholder="Address Line 2" />
								<input type="text" name="city" id="city" placeholder="City" />
								<input type="text" name="state" id="state" placeholder="State" />
								<input type="text" name="zip" id="zip" placeholder="Postal Code" />
								<input type="email" name="email" id="email" placeholder="Email Address (for confirmation)" />
								<input type="submit" value="Get Stickers" class="fit" />
							</div>
						</div>
					</form>

				</section>

			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="https://twitter.com/projectpoetryla/" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="https://www.facebook.com/ProjectPoetryLA/" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="https://www.instagram.com/projectpoetryla/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
					</ul>
					<ul class="copyright">
						<li>
              <a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/80x15.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">project poetry</span> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.</li>
					</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollgress.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

	</body>
</html>
