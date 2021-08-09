<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>WinTime</title>
<meta name="description"
	content="Page Preloading Effect: Re-creating the effect seen on fontface.ninja" />
<meta name="keywords"
	content="page loading, effect, initial, logo, sliding, web design, css animation, transform" />
<meta name="author" content="Codrops" />
<link rel="shortcut icon"
	href="TEMPLATE/assets/img/img/relatedposts/arintech.jpg"
	type="image/x-icon" />
<link rel="stylesheet" type="text/css"
	href="TEMPLATE/assets/css/css/demo.css" />
<link rel="stylesheet" type="text/css"
	href="TEMPLATE/assets/css/css/effect1.css" />
<script src="TEMPLATE/assets/js/js/modernizr.custom.js"></script>

<style type="text/css">
ul {
	padding: 0;
	margin: 0;
	list-style-type: none;
}

li {
	float: left; /*pour IE*/
	border-left: 1px solid black;
}

ul li:first-child a {
	display: block;
	float: left;
	height: 10px;
	width: 20px;
	background-image: url('TEMPLATE/assets/myimg/en.jpg');
	background-size: contain;
	background-repeat: no-repeat;
}
ul li:nth-child(2) a {
	display: block;
	float: left;
	height: 10px;
	width: 20px;
	background-image: url('TEMPLATE/assets/myimg/fr.jpg');
	background-size: contain;
	background-repeat: no-repeat;
}
</style>
</head>
<body class="demo-1">
	<ul>
		<li><a href="index?language=en_GB"></a></li>
		<li><a href="index?language=fr_FR"></a></li>
	</ul>
	<div id="ip-container" class="ip-container">
		<!-- initial header -->
		<header class="ip-header">

			<h1 class="ip-logo">

				<svg class="ip-inner" width="100%" height="30%"
					preserveAspectRatio="xMidYMin meet" aria-labelledby="logo_title">
                    <image
						xlink:href="TEMPLATE/assets/img/img/relatedposts/ui-sam.jpeg" />
                    </svg>
			</h1>
			<div class="ip-loader">

				<svg class="ip-inner" width="60px" height="60px" viewBox="0 0 80 80">
                    <path class="ip-loader-circlebg"
						d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" />
                    <path id="ip-loader-circle" class="ip-loader-circle"
						d="M40,10C57.351,10,71,23.649,71,40.5S57.351,71,40.5,71 S10,57.351,10,40.5S23.649,10,40.5,10z" />
                    </svg>
			</div>
		</header>

		<!-- main content -->
		<div class="ip-main">
			<section class="related">
			
						<a href="login?page=1"> <img
							src="TEMPLATE/assets/img/img/relatedposts/settings.jpeg"
							alt="Header Effects" class="minister" />
							<h3>SETTING</h3>
						</a>
						<a href="login?page=2"> <img
							src="TEMPLATE/assets/img/img/relatedposts/minpostel.jpg"
							alt="Article Intro Effects" class="minister" />
							<h3>MINPOSTEL</h3>
						</a>
						<a href="login?page=3"> <img
							src="TEMPLATE/assets/img/img/relatedposts/antic.jpg"
							alt="Article Intro Effects" class="minister" />
							<h3>ANTIC</h3>
						</a>

				
				

			</section>

		</div>
	</div>
	<!-- /container -->
	<script src="TEMPLATE/assets/js/js/classie.js"></script>
	<script src="TEMPLATE/assets/js/js/pathLoader.js"></script>
	<script src="TEMPLATE/assets/js/js/main.js"></script>

	<script src="TEMPLATE/assets/js/core/jquery.min.js"></script>
	<script src="TEMPLATE/jquery.il8n/CLDRPluralRuleParser.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.messagestore.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.fallbacks.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.language.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.parser.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.emitter.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/jquery.i18n.emitter.bidi.js ">
		
	</script>
	<script src="TEMPLATE/jquery.il8n/global.js ">
		
	</script>
	<script>
		jQuery(function() {
			var language = "${language}";
			var lan = language.split("_")[0];
			Global.staticProperty = lan;

		});
	</script>


</body>
</html>