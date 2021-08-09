<nav
	class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
	<div class="container-fluid">
		<div class="navbar-wrapper">
			<div class="navbar-minimize">
				<button id="minimizeSidebar"
					class="btn btn-just-icon btn-white btn-fab btn-round">
					<img class="himf" src="TEMPLATE/assets/myimg/more_vert_black.png">

				</button>
			</div>
			<a class="navbar-brand" href="#pablo"></a>
			<h2 style="color: #0000FF;">PAY</h2>
			<h2 style="color: #B22222;">NOW</h2>
		</div>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			aria-controls="navigation-index" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="sr-only">Toggle navigation</span> <span
				class="navbar-toggler-icon icon-bar"></span> <span
				class="navbar-toggler-icon icon-bar"></span> <span
				class="navbar-toggler-icon icon-bar"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end">

			<div class="input-group no-border">
				<input type="text" value="" class="form-control"
					placeholder="Search..." id="textseach">
				<button type="submit" class="btn btn-white btn-round btn-just-icon"
					id="btseach">
					<img class="himf" src="TEMPLATE/assets/myimg/search_black.png">
					<div class="ripple-container"></div>
				</button>
			</div>

			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="main"> <img
						class="material-icons"
						src="TEMPLATE/assets/myimg/dashboard_black.png">
						<p class="d-lg-none d-md-block">Stats</p>
				</a></li>






				<C:choose>
					<C:when test="${param.active=='1'}">


					</C:when>
					<C:otherwise>
						<li class="nav-item"><a class="nav-link" id="statistique">
								<img class="material-icons"
								src="TEMPLATE/assets/myimg/timeline_black.png">
								<p class="d-lg-none d-md-block">Stats</p>
						</a></li>
					</C:otherwise>
				</C:choose>












				<C:choose>
					<C:when test="${param.active=='10'}">


					</C:when>
					<C:otherwise>
						<li class="nav-item dropdown"><a class="nav-link"
							href="http://example.com" id="navbarDropdownMenuLink"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<img class="material-icons"
								src="TEMPLATE/assets/myimg/notifications_black.png"> <span
								class="notification" id="notification">0</span>
								<p class="d-lg-none d-md-block">Some Actions</p>
						</a>
							<div class="dropdown-menu dropdown-menu-right"
								aria-labelledby="navbarDropdownMenuLink">
								<a class="dropdown-item" href="servletNotification">Notification
									System</a> <a class="dropdown-item" href="#">Notification
									Specifiques</a>

							</div></li>
					</C:otherwise>
				</C:choose>










				<li class="nav-item dropdown"><a class="nav-link" href="#pablo"
					id="navbarDropdownProfile" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <img
						class="material-icons"
						src="TEMPLATE/assets/myimg/person_black.png">
						<p class="d-lg-none d-md-block">Account</p>
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownProfile">

						<C:choose>
							<C:when test="${BIN13=='BIN13'}">
								<%--droit ajout des droit --%>
								<a class="dropdown-item" href="servletGetAllDroit">AddSupDroit</a>
								<%--droit ajout des droit --%>

							</C:when>
						</C:choose>
						<a class="dropdown-item" href="servletEditProfil">Settings</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="logout?language=${language}"><fmt:message
								key="logout" /></a>
					</div></li>
			</ul>
		</div>
	</div>
</nav>