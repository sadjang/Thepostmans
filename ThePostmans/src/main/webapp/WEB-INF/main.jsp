<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="TEMPLATE/assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="TEMPLATE/assets/img/favicon.png">
<link rel="shortcut icon"
	href="TEMPLATE/assets/img/img/relatedposts/arintech.jpg"
	type="image/x-icon" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>WinTime</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<!-- CSS Files -->
<link href="TEMPLATE/assets/css/material-dashboard.css?v=2.1.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="TEMPLATE/assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">





		<jsp:include page="sliderMenu.jsp">
			<jsp:param name="active" value='1' />
		</jsp:include>







		<div class="main-panel">
			<!-- Navbar -->


			<jsp:include page="header.jsp">
				<jsp:param name="active" value='1' />
			</jsp:include>


			<!-- End Navbar -->
			<div class="content">
				<div class="content">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="card ">
									<div class="card-header card-header-success card-header-icon">
										<div class="card-icon">
											<i class="material-icons">???</i>
										</div>
										<h4 class="card-title">
											<fmt:message key="recenavoir" />
										</h4>
									</div>
									<div class="card-body ">
										<div class="row">
											<div class="col-md-6">

												<C:choose>
													<C:when test="${BIN2=='BIN2'}">
														<%--droit voir liste Demand --%>
														<C:choose>
															<C:when test="${BIN233=='BIN233'}">
																<%--droit voir liste Demand --%>
																<C:choose>
																	<C:when test="${BINGA233=='BINGA233'}">
																		<%--droit voir liste Demand --%>



																		<div class="table-responsive table-sales">
																			<table class="table">
																				<thead>
																					<tr>
																						<th>#</th>
																						<th data-i18n="operateur"></th>
																						<th data-i18n="nbrelement"></th>
																						<th data-i18n="mtprevu"></th>
																						<th data-i18n="mtrecu"></th>
																						<th data-i18n="txcouvert"></th>
																					</tr>
																				</thead>
																				<tbody id="operteurcumul">
																				</tbody>


																			</table>
																		</div>








																		<%--droit voir liste Demand --%>
																	</C:when>
																</C:choose>



																<%--droit voir liste Demand --%>
															</C:when>
														</C:choose>

														<%--droit voir liste Demand --%>
													</C:when>
												</C:choose>










											</div>
											<div class="col-md-6 ml-auto mr-auto">
												<div id="worldMap" style="height: 300px;"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- <button type="button" class="btn btn-round btn-default dropdown-toggle btn-link" data-toggle="dropdown">
7 days
</button> -->

						<div class="row">

							<C:choose>
								<C:when test="${BIN3=='BIN3'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BIN311=='BIN311'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA311=='BINGA311'}">
													<%--droit voir liste Demand --%>

													<div class="col-lg-3 col-md-6 col-sm-6">
														<div class="card card-stats">
															<div
																class="card-header card-header-warning card-header-icon">
																<div class="card-icon">

																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/account_box_white.png">
																</div>
																<p class="card-category" data-i18n="abonnes"></p>
																<h3 class="card-title">
																	<a href="servletListUser?page=1" class="card-title"
																		id="nombuser"></a>
																</h3>
															</div>
															<div class="card-footer">
																<div class="stats">
																	<img class="material-icons text-danger"
																		src="TEMPLATE/assets/myimg/warning_black.png"> <a
																		href="#pablo">Get More Space...</a>
																</div>
															</div>
														</div>
													</div>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>





							<C:choose>
								<C:when test="${BIN1=='BIN1'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BIN111=='BIN111'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA111=='BINGA111'}">
													<%--droit voir liste Demand --%>
													<div class="col-lg-3 col-md-6 col-sm-6">
														<div class="card card-stats">
															<div
																class="card-header card-header-rose card-header-icon">
																<div class="card-icon">
																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/equalizer_white.png">

																</div>
																<p class="card-category" data-i18n="compte"></p>

																<h3 class="card-title">
																	<a href="servletCompte?page=1&type=1"
																		class="card-title" id="nombcompte"></a>
																</h3>
															</div>
															<div class="card-footer">
																<div class="stats">
																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/local_offer_black.png">
																	Tracked from Google Analytics
																</div>
															</div>
														</div>
													</div>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>



							<C:choose>
								<C:when test="${BIN4=='BIN4'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BIN411=='BIN411'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA411=='BINGA411'}">
													<%--droit voir liste Demand --%>
													<div class="col-lg-3 col-md-6 col-sm-6">
														<div class="card card-stats">
															<div
																class="card-header card-header-success card-header-icon">
																<div class="card-icon">
																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/folder_white.png">
																</div>
																<p class="card-category" data-i18n="fichier"></p>
																<h3 class="card-title">
																	<a href="servletfichier?page=1" class="card-title"
																		id="nombfichier"></a>
																</h3>
															</div>
															<div class="card-footer">
																<div class="stats">
																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/date_range_black.png">
																	Last 24 Hours
																</div>
															</div>
														</div>
													</div>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>





							<C:choose>
								<C:when test="${BIN7=='BIN7'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BIN711=='BIN711'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA711=='BINGA711'}">
													<%--droit voir liste Demand --%>
													<div class="col-lg-3 col-md-6 col-sm-6">
														<div class="card card-stats">
															<div
																class="card-header card-header-info card-header-icon">
																<div class="card-icon">
																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/view_comfy_white_1.png">
																</div>
																<p class="card-category" data-i18n="contensieux"></p>

																<h3 class="card-title">
																	<a href="servletListReclamations?page=1"
																		class="card-title" id="contensieux">0</a>
																</h3>
															</div>
															<div class="card-footer">
																<div class="stats">
																	<img class="material-icons"
																		src="TEMPLATE/assets/myimg/update_black.png">
																	Just Updated
																</div>
															</div>
														</div>
													</div>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>










						</div>
						<h3>Manage Listings</h3>
						<br>
						<div class="row">






							<C:choose>
								<C:when test="${BIN1021=='BIN1021'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BINGA1023=='BINGA1023'}">
											<%--droit voir liste compte --%>
											<div class="col-md-4">
												<div class="card card-product">
													<div class="card-header card-header-image"
														data-header-animation="true">
														<a href="#pablo"> <img class="img"
															src="TEMPLATE/assets/img/utilisateur1.jpg">
														</a>
													</div>


													<div class="card-body">
														<div class="card-actions text-center">
															<button type="button"
																class="btn btn-danger btn-link fix-broken-card">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/build_black.png"> Fix
																Header!
															</button>
															<button type="button" class="btn btn-default btn-link"
																rel="tooltip" data-placement="bottom" title="View">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/art_track_black.png">
															</button>
															<button type="button" class="btn btn-success btn-link"
																rel="tooltip" data-placement="bottom" title="Edit">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/edit_black.png">
															</button>
															<button type="button" class="btn btn-danger btn-link"
																rel="tooltip" data-placement="bottom" title="Remove">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/close_black.png">
															</button>
														</div>
														<h4 class="card-title">
															<a href="servletstatPrelevement?page=1">Lab
																Statistique</a>
														</h4>
														<div class="card-description"
															data-i18n="progrestatistique"></div>
													</div>
												</div>
											</div>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>
									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>










							<C:choose>
								<C:when test="${BIN1022=='BIN1022'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BINGA1022=='BINGA1022'}">
											<%--droit voir liste compte --%>

											<div class="col-md-4">
												<div class="card card-product">
													<div class="card-header card-header-image"
														data-header-animation="true">
														<a href="#pablo"> <img class="img"
															src="TEMPLATE/assets/img/douan.jpg">
														</a>
													</div>
													<div class="card-body">
														<div class="card-actions text-center">
															<button type="button"
																class="btn btn-danger btn-link fix-broken-card">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/build_black.png"> Fix
																Header!
															</button>
															<button type="button" class="btn btn-default btn-link"
																rel="tooltip" data-placement="bottom" title="View">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/art_track_black.png">
															</button>
															<button type="button" class="btn btn-success btn-link"
																rel="tooltip" data-placement="bottom" title="Edit">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/edit_black.png">
															</button>
															<button type="button" class="btn btn-danger btn-link"
																rel="tooltip" data-placement="bottom" title="Remove">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/close_black.png">
															</button>
														</div>
														<h4 class="card-title">
															<a href="servletListImeiDevice" data-i18n="gestionmarque"></a>
														</h4>
														<div class="card-description" data-i18n="moduladdmodel">

														</div>
													</div>

												</div>
											</div>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>
									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>










							<C:choose>
								<C:when test="${BIN1023=='BIN1023'}">
									<%--droit voir liste Demand --%>
									<C:choose>
										<C:when test="${BINGA1024=='BINGA1024'}">
											<%--droit voir liste compte --%>

											<div class="col-md-4">
												<div class="card card-product">
													<div class="card-header card-header-image"
														data-header-animation="true">
														<a href="#pablo"> <img class="img"
															src="TEMPLATE/assets/img/telepon.jpg">
														</a>
													</div>
													<div class="card-body">
														<div class="card-actions text-center">
															<button type="button"
																class="btn btn-danger btn-link fix-broken-card">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/build_black.png"> Fix
																Header!
															</button>
															<button type="button" class="btn btn-default btn-link"
																rel="tooltip" data-placement="bottom" title="View">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/art_track_black.png">
															</button>
															<button type="button" class="btn btn-success btn-link"
																rel="tooltip" data-placement="bottom" title="Edit">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/edit_black.png">
															</button>
															<button type="button" class="btn btn-danger btn-link"
																rel="tooltip" data-placement="bottom" title="Remove">
																<img class="material-icons"
																	src="TEMPLATE/assets/myimg/close_black.png">
															</button>
														</div>
														<h4 class="card-title">
															<a href="servletValidationAdministrative"
																data-i18n="validationadminis">Validation
																Administrative</a>
														</h4>
														<div class="card-description"
															data-i18n="descriptionvalidationadminis"></div>
													</div>

												</div>
											</div>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>
									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>














						</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="container-fluid">

					<C:choose>
						<C:when test="${BIN2006=='BIN2006'}">
							<%--droit voir liste Demand --%>
							<C:choose>
								<C:when test="${BINGA2006=='BINGA2006'}">
									<%--droit voir liste compte --%>


									<h3 class="card-title">
										<a href="servletGeolocalisation?page=1" class="card-title"
											id="nombuser">Geolocalisation</a>
									</h3>



									<%--droit voir liste Demand --%>
								</C:when>
							</C:choose>

							<%--droit voir liste Demand --%>
						</C:when>
					</C:choose>





					<%@include file="copyrigth.jsp"%>
				</div>
			</footer>
		</div>
	</div>
	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>
			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Filters</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger active-color">
						<div class="badge-colors ml-auto mr-auto">
							<span class="badge filter badge-purple" data-color="purple"></span>
							<span class="badge filter badge-azure" data-color="azure"></span>
							<span class="badge filter badge-green" data-color="green"></span>
							<span class="badge filter badge-warning" data-color="orange"></span>
							<span class="badge filter badge-danger" data-color="danger"></span>
							<span class="badge filter badge-rose active" data-color="rose"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Sidebar Background</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger background-color">
						<div class="ml-auto mr-auto">
							<span class="badge filter badge-black active"
								data-background-color="black"></span> <span
								class="badge filter badge-white" data-background-color="white"></span>
							<span class="badge filter badge-red" data-background-color="red"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Sidebar Mini</p> <label class="ml-auto">
							<div class="togglebutton switch-sidebar-mini">
								<label> <input type="checkbox"> <span
									class="toggle"></span>
								</label>
							</div>
					</label>
						<div class="clearfix"></div>
				</a></li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Sidebar Images</p> <label class="switch-mini ml-auto">
							<div class="togglebutton switch-sidebar-image">
								<label> <input type="checkbox" checked=""> <span
									class="toggle"></span>
								</label>
							</div>
					</label>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Images</li>
				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="TEMPLATE/assets/img/sidebar-1.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="TEMPLATE/assets/img/sidebar-2.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="TEMPLATE/assets/img/sidebar-3.jpg" alt="">
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="TEMPLATE/assets/img/sidebar-4.jpg" alt="">
				</a></li>
				<li class="button-container"><a
					href="https://www.creative-tim.com/product/material-dashboard-pro"
					target="_blank" class="btn btn-rose btn-block btn-fill">Buy Now</a>
					<a
					href="https://demos.creative-tim.com/material-dashboard-pro/docs/2.1/getting-started/introduction.html"
					target="_blank" class="btn btn-default btn-block">
						Documentation </a> <a
					href="https://www.creative-tim.com/product/material-dashboard"
					target="_blank" class="btn btn-info btn-block"> Get Free Demo!
				</a></li>
				<li class="button-container github-star"><a
					class="github-button"
					href="https://github.com/creativetimofficial/ct-material-dashboard-pro"
					data-icon="octicon-star" data-size="large" data-show-count="true"
					aria-label="Star ntkme/github-buttons on GitHub">Star</a></li>
				<li class="header-title">Thank you for 95 shares!</li>
				<li class="button-container text-center">
					<button id="twitter" class="btn btn-round btn-twitter">
						<i class="fa fa-twitter"></i> &middot; 45
					</button>
					<button id="facebook" class="btn btn-round btn-facebook">
						<i class="fa fa-facebook-f"></i> &middot; 50
					</button> <br> <br>
				</li>
			</ul>
		</div>
	</div>
	<!--   Core JS Files   -->

	<script src="TEMPLATE/assets/js/core/jquery.min.js"></script>
	<script src="TEMPLATE/assets/js/core/popper.min.js"></script>
	<script src="TEMPLATE/assets/js/core/bootstrap-material-design.min.js"></script>
	<script
		src="TEMPLATE/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!-- Plugin for the momentJs  -->
	<script src="TEMPLATE/assets/js/plugins/moment.min.js"></script>
	<!--  Plugin for Sweet Alert -->
	<script src="TEMPLATE/assets/js/plugins/sweetalert2.js"></script>
	<!-- Forms Validations Plugin -->
	<script src="TEMPLATE/assets/js/plugins/jquery.validate.min.js"></script>
	<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
	<script src="TEMPLATE/assets/js/plugins/jquery.bootstrap-wizard.js"></script>
	<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
	<script src="TEMPLATE/assets/js/plugins/bootstrap-selectpicker.js"></script>
	<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script
		src="TEMPLATE/assets/js/plugins/bootstrap-datetimepicker.min.js"></script>
	<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
	<script src="TEMPLATE/assets/js/plugins/jquery.dataTables.min.js"></script>
	<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
	<script src="TEMPLATE/assets/js/plugins/bootstrap-tagsinput.js"></script>
	<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
	<script src="TEMPLATE/assets/js/plugins/jasny-bootstrap.min.js"></script>
	<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
	<script src="TEMPLATE/assets/js/plugins/fullcalendar.min.js"></script>
	<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
	<script src="TEMPLATE/assets/js/plugins/jquery-jvectormap.js"></script>
	<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
	<script src="TEMPLATE/assets/js/plugins/nouislider.min.js"></script>
	<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
	<!-- Library for adding dinamically elements -->
	<script src="TEMPLATE/assets/js/plugins/arrive.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chartist JS -->
	<script src="TEMPLATE/assets/js/plugins/chartist.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="TEMPLATE/assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="TEMPLATE/assets/js/material-dashboard.js?v=2.1.0"
		type="text/javascript"></script>
	<!-- Material Dashboard DEMO methods, don't include it in your project! -->
	<script src="TEMPLATE/assets/demo/demo.js"></script>
	<script src="TEMPLATE/assets/js/js/droit.js"></script>
	<script src="TEMPLATE/assets/js/plugins/sweetalert2.js"></script>


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
		// initialisation des droit a voir plustar si necessaire si pas possible d'initialiser une seule fois
		initdroit("${BIN1}", "${BIN111}", "${BIN122}", "${BIN2}", "${BIN211}",
				"${BIN222}", "${BIN233}", "${BIN244}", "${BIN3}", "${BIN311}",
				"${BIN322}", "${BIN4}", "${BIN411}", "${BIN422}", "${BIN5}",
				"${BIN511}", "${BIN522}", "${BIN6}", "${BIN611}", "${BIN622}",
				"${BIN7}", "${BIN711}", "${BIN722}", "${BIN8}", "${BIN811}",
				"${BIN822}", "${BIN14}", "${BIN13}", "${BIN1001}",
				"${BIN1002}", "${BIN1003}", "${BIN1004}", "${BIN1005}",
				"${BIN1006}", "${BIN1007}", "${BIN1008}", "${BIN1009}",
				"${BIN1010}", "${BIN1011}", "${BIN1012}", "${BIN1013}",
				"${BIN1014}", "${BIN1015}", "${BIN1016}", "${BIN1017}",
				"${BIN1018}", "${BIN1019}", "${BIN1020}", "${BIN1021}",
				"${BIN200}", "${BIN2001}", "${BIN2002}", "${BIN2003}",
				"${BIN2004}", "${BIN2005}", "${BIN2006}", "${BIN2007}",
				"${BIN2008}", "${BIN2009}", "${BIN2030}", "${BIN2031}",
				"${BIN2032}", "${BIN2033}", "${BIN2034}", "${BIN2035}",
				"${BIN2036}");
		/////////////////////////////////////////////////////////////
		/////////// initialisation des locaux
		initdroitlocal("${BINGA1}", "${BINGA111}", "${BINGA122}", "${BINGA2}",
				"${BINGA211}", "${BINGA222}", "${BINGA233}", "${BINGA244}",
				"${BINGA3}", "${BINGA311}", "${BINGA322}", "${BINGA4}",
				"${BINGA411}", "${BINGA422}", "${BINGA5}", "${BINGA511}",
				"${BINGA522}", "${BINGA6}", "${BINGA611}", "${BINGA622}",
				"${BINGA7}", "${BINGA711}", "${BINGA722}", "${BINGA8}",
				"${BINGA811}", "${BINGA822}", "${BINGA14}", "${BINGA13}",
				"${BINGA1001}", "${BINGA1002}", "${BINGA1003}", "${BINGA1004}",
				"${BINGA1005}", "${BINGA1006}", "${BINGA1007}", "${BINGA1008}",
				"${BINGA1009}", "${BINGA1010}", "${BINGA1011}", "${BINGA1012}",
				"${BINGA1013}", "${BINGA1014}", "${BINGA1015}", "${BINGA1016}",
				"${BINGA1017}", "${BINGA1018}", "${BINGA1019}", "${BINGA1020}",
				"${BINGA1021}", "${BINGA200}", "${BINGA2001}", "${BINGA2002}",
				"${BINGA2003}", "${BINGA2004}", "${BINGA2005}", "${BINGA2006}",
				"${BINGA2007}", "${BINGA2008}", "${BINGA2009}", "${BINGA2030}",
				"${BINGA2031}", "${BINGA2032}", "${BINGA2033}", "${BINGA2034}",
				"${BINGA2035}", "${BINGA2036}");

		/////////////////////////

		$('nav').on('click', 'li', function() {
			$('nav').removeClass('active');
			$(this).addClass('active');
		});

		function tableauTransaction(response) {

			var len = response.listTransaction.listOperqteurmontant.length;
			for (var i = 0; i < len; i++) {

				var id = response.listTransaction.listOperqteurmontant[i];
				var mon = id.montantrecu * 100;
				var taux;
				if (id.montant == 0) {
					taux = 0;
				} else {
					taux = mon / id.montant;
				}

				var tr_str = "<tr id=" + id.idOperateur+">" + "<td >" + (i + 1)
						+ "</td>" + "<td >" + id.nomOperateur + "</td>"
						+ "<td >" + id.nombredetransaction + "</td>" + "<td >"
						+ id.montant + "</td>";
				if (id.montant > id.montantrecu) {
					tr_str = tr_str + "<td > <span class='label label-danger'>"
							+ id.montantrecu + "</span></td>";
				} else {
					tr_str = tr_str
							+ "<td > <span class='label label-success'>"
							+ id.montantrecu + "</span></td>";

				}
				tr_str += "<td ><span class='badge badge-info'>" + taux
						+ "%</span></td>" + "</tr>";
				$("#operteurcumul").append(tr_str);

			}
		}

		function main() {
			var d = new Date();
			var strDate = d.getFullYear() + "/" + (d.getMonth() + 1) + "/"
					+ d.getDate();
			var codeuser = "${user.getCode()}";
			$.ajax({
				method : "POST",
				url : "main",
				data : {
					codeuser : codeuser
				},
				success : function(response) {
					//  console.log(response);

					$('#nombfichier').html(response.nombreFichier);
					$('#jourdate').html(strDate);
					$('#nombcompte').html(
							response.listeCompte.listeElement.taile);
					$('#nombuser').html(response.nombreUser);
					tableauTransaction(response);

				},
				error : function(response) {
					Swal.fire({
						type : 'error',
						title : 'Oops...',
						text : 'erreur de connexion!'

					})
				}

			});

		}

		$(document).ready(function() {
			$().ready(function() {
				main();
			});
		});
	</script>
	<script>
		$(document).ready(function() {

			// definition langue
			var language = "${language}";
			var lan = language.split("_")[0];
			Global.staticProperty = lan;
			/////////
			// Javascript method's body can be found in assets/js/demos.js
			md.initDashboardPageCharts();

			md.initVectorMap();

		});

		/////////////////////////////////////

		/// programation parallele
		//Cr?ation d'une zone d'affichage
		//var elem=$('#notification');
		//elem.value = "Le jardinier marche"+
		//            " vers le potager";

		//Cr?ation d'un worker
		/*
		 if(window.Worker){
		 //le navigateur supporte les workers
		
		 var worker=new Worker("worker.js");
		 //$('#notification').html(10);
		
		
		 worker.onmessage=function(event){
		
		 $('#notification').html( event.data);
		 };

		 }else{
		 //le navigateur ne supporte pas les workers
		 alert("D?sol? votre navigateur "+
		 "ne supporte pas les workers ! ?");
		 }
		 */

		//////////////////////////
	</script>
</body>

</html>