
<link type="text/css" href="TEMPLATE/assets/myimg/mycss.css"
	rel="stylesheet" />
<div class="sidebar" data-color="rose" data-background-color="black"
	data-image="TEMPLATE/assets/img/sidebar-1.jpg">
	<!--
      Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

      Tip 2: you can also add an image using data-image tag
    -->
	<div class="logo">
		<a href="#" class="simple-text logo-mini"> AR </a> <a href="#"
			class="simple-text logo-normal"> <fmt:message key="plateform" />
		</a>
	</div>
	<div class="sidebar-wrapper">
		<div class="user">
			<div class="photo">
				<img src='data:image/png;base64,${user.getPicture()}' />

			</div>




			<C:choose>
				<C:when test="${param.active=='0'}">
					<div class="user-info">
						<a data-toggle="collapse" href="#collapseExample" class="username"
							aria-expanded="true"> <span>
								<p>${user.getNom()}</p> <b class="caret"></b>

						</span>

						</a>
						<div class="collapse show" id="collapseExample">
							<ul class="nav">
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="sidebar-mini"> G </span> <span class="sidebar-normal">
											${user.getGrade()} </span>
								</a></li>





								<C:choose>
									<C:when test="${param.fils=='1'}">

										<li class="nav-item active"><a class="nav-link"
											href="servletEditProfil"> <span class="sidebar-mini">
													EP </span> <span class="sidebar-normal"> <fmt:message
														key="editprofil" />
											</span>
										</a></li>


									</C:when>
									<C:otherwise>

										<li class="nav-item"><a class="nav-link"
											href="servletEditProfil"> <span class="sidebar-mini">
													EP </span> <span class="sidebar-normal"> <fmt:message
														key="editprofil" />
											</span>
										</a></li>


									</C:otherwise>
								</C:choose>











							</ul>
						</div>
				</C:when>
				<C:otherwise>
					<div class="user-info">
						<a data-toggle="collapse" href="#collapseExample" class="username">
							<span>
								<p>${user.getNom()}</p> <b class="caret"></b>

						</span>

						</a>
						<div class="collapse" id="collapseExample">
							<ul class="nav">
								<li class="nav-item"><a class="nav-link" href="#"> <span
										class="sidebar-mini"> G </span> <span class="sidebar-normal">
											${user.getGrade()} </span>
								</a></li>


								<li class="nav-item"><a class="nav-link"
									href="servletEditProfil"> <span class="sidebar-mini">
											EP </span> <span class="sidebar-normal"> <fmt:message
												key="editprofil" />
									</span>
								</a></li>


							</ul>
						</div>
				</C:otherwise>
			</C:choose>











		</div>
	</div>
	<ul class="nav">



















		<C:choose>
			<C:when test="${param.active=='1'}">
				<li class="nav-item active"><a class="nav-link" href="main">

						<p>
							<img class="mimf" src="TEMPLATE/assets/myimg/dashboard_white.png">
							<fmt:message key="dashboard" />
						</p>
				</a></li>
			</C:when>
			<C:otherwise>
				<li class="nav-item "><a class="nav-link" href="main">

						<p>
							<img class="mimf" src="TEMPLATE/assets/myimg/dashboard_white.png">
							<fmt:message key="dashboard" />
						</p>
				</a></li>
			</C:otherwise>
		</C:choose>






		<C:choose>
			<C:when test="${BIN1=='BIN1'}">
				<%--droit voir liste compte --%>



				<C:choose>
					<C:when test="${param.active=='2'}">

						<li class="nav-item active"><a class="nav-link"
							data-toggle="collapse" href="#pagesExamples" aria-expanded="true">

								<p>
									<img class="mimf" src="TEMPLATE/assets/myimg/person_white.png">
									<fmt:message key="comptes" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="pagesExamples">
								<ul class="nav">


									<C:choose>
										<C:when test="${BIN111=='BIN111'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA111=='BINGA111'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='1'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletCompte?page=1&type=1"> <span
																	class="sidebar-mini"> LC </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listcompte" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item"><a class="nav-link"
																href="servletCompte?page=1&type=1"> <span
																	class="sidebar-mini"> LC </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listcompte" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>


													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>








											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>




									<C:choose>
										<C:when test="${BIN122=='BIN122'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA122=='BINGA122'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='2'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListerminaux?page=1"> <span
																	class="sidebar-mini"> LT </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeterminaux" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListerminaux?page=1"> <span
																	class="sidebar-mini"> LT </span> <span
																	class="sidebar-normal"><fmt:message
																			key="listeterminaux" /></span>
															</a></li>
														</C:otherwise>
													</C:choose>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>






											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>


									<C:choose>
										<C:when test="${BIN122=='BIN122'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA122=='BINGA122'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='3'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListTelephonePhysique?page=1"> <span
																	class="sidebar-mini"> LT </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="telephones" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListTelephonePhysique?page=1"> <span
																	class="sidebar-mini"> LT </span> <span
																	class="sidebar-normal"><fmt:message
																			key="telephones" /></span>
															</a></li>
														</C:otherwise>
													</C:choose>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>






											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>



								</ul>
							</div></li>


					</C:when>
					<C:otherwise>
						<li class="nav-item"><a class="nav-link"
							data-toggle="collapse" href="#pagesExamples"
							aria-expanded="false">

								<p>
									<img class="mimf" src="TEMPLATE/assets/myimg/person_white.png">
									<fmt:message key="comptes" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="pagesExamples">
								<ul class="nav">





									<C:choose>
										<C:when test="${BIN111=='BIN111'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA111=='BINGA111'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletCompte?page=1&type=1"> <span
															class="sidebar-mini"> LC </span> <span
															class="sidebar-normal"> <fmt:message
																	key="listcompte" />
														</span>
													</a></li>


													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>
									<C:choose>
										<C:when test="${BIN122=='BIN122'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA122=='BINGA122'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListerminaux?page=1"> <span
															class="sidebar-mini"> LT </span> <span
															class="sidebar-normal"> <fmt:message
																	key="listeterminaux" /></span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN122=='BIN122'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA122=='BINGA122'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListTelephonePhysique?page=1"> <span
															class="sidebar-mini"> T </span> <span
															class="sidebar-normal"> <fmt:message
																	key="telephones" /></span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>











								</ul>
							</div></li>


					</C:otherwise>
				</C:choose>








				<%--droit voir liste compte --%>
			</C:when>
		</C:choose>


















		<C:choose>
			<C:when test="${BIN2=='BIN2'}">

				<%--droit voir prelevement --%>

				<C:choose>
					<C:when test="${param.active=='3'}">
						<li class="nav-item active"><a class="nav-link"
							data-toggle="collapse" href="#componentsExamples"
							aria-expanded="true"> <i class="material-icons">P</i>
								<p>
									<fmt:message key="prelevement" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="componentsExamples">
								<ul class="nav">


									<C:choose>
										<C:when test="${BIN211=='BIN211'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA211=='BINGA211'}">
													<%--droit voir liste compte --%>







													<C:choose>
														<C:when test="${param.fils=='1'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListPrelevement?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"><fmt:message
																			key="effectue" /> </span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListPrelevement?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="effectue" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>














									<C:choose>
										<C:when test="${BIN222=='BIN222'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA222=='BINGA222'}">
													<%--droit voir liste compte --%>

													<C:choose>
														<C:when test="${param.fils=='2'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListPrelevementToDo?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="aeffectuer" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListPrelevementToDo?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"><fmt:message
																			key="aeffectuer" /> </span>
															</a></li>
														</C:otherwise>
													</C:choose>



													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN233=='BIN233'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA233=='BINGA233'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='3'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListePrelevementOperateur?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"><fmt:message
																			key="cumulparoperateur" /> </span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListePrelevementOperateur?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"><fmt:message
																			key="cumulparoperateur" /> </span>
															</a></li>
														</C:otherwise>
													</C:choose>


													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>








											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>





									<C:choose>
										<C:when test="${BIN244=='BIN244'}">
											<%--droit voir liste Demand --%>


											<C:choose>
												<C:when test="${BINGA244=='BINGA244'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='4'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListPrelevemenMode?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"><fmt:message
																			key="cumulparmodel" /> </span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListPrelevemenMode?page=1"> <span
																	class="sidebar-mini"> PR </span> <span
																	class="sidebar-normal"><fmt:message
																			key="cumulparmodel" /> </span>
															</a></li>
														</C:otherwise>
													</C:choose>











													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>




											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>









									<C:choose>
										<C:when test="${BIN244=='BIN244'}">
											<%--droit voir liste Demand --%>


											<C:choose>
												<C:when test="${BINGA244=='BINGA244'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='5'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListPrelevmentOneOFF?page=1"> <span
																	class="sidebar-mini"> PO </span> <span
																	class="sidebar-normal"><fmt:message
																			key="prelevemnentsoneoff" /> </span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListPrelevmentOneOFF?page=1"> <span
																	class="sidebar-mini"> PO </span> <span
																	class="sidebar-normal"><fmt:message
																			key="prelevemnentsoneoff" /> </span>
															</a></li>
														</C:otherwise>
													</C:choose>











													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>




											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

















								</ul>
							</div></li>

					</C:when>
					<C:otherwise>
						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#componentsExamples"> <i
								class="material-icons">P</i>
								<p>
									<fmt:message key="prelevement" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="componentsExamples">
								<ul class="nav">

									<C:choose>
										<C:when test="${BIN211=='BIN211'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA211=='BINGA211'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListPrelevement?page=1"> <span
															class="sidebar-mini"> PR </span> <span
															class="sidebar-normal"> <fmt:message
																	key="effectue" />
														</span>
													</a></li>







													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>




											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>


									<C:choose>
										<C:when test="${BIN222=='BIN222'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA222=='BINGA222'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListPrelevementToDo?page=1"> <span
															class="sidebar-mini"> PR </span> <span
															class="sidebar-normal"><fmt:message
																	key="aeffectuer" /> </span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN233=='BIN233'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA233=='BINGA233'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListePrelevementOperateur?page=1"> <span
															class="sidebar-mini"> PR </span> <span
															class="sidebar-normal"><fmt:message
																	key="cumulparoperateur" /> </span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>



									<C:choose>
										<C:when test="${BIN244=='BIN244'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA244=='BINGA244'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListPrelevemenMode?page=1"> <span
															class="sidebar-mini"> PR </span> <span
															class="sidebar-normal"><fmt:message
																	key="cumulparmodel" /> </span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>









									<C:choose>
										<C:when test="${BIN244=='BIN244'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA244=='BINGA244'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListPrelevmentOneOFF?page=1"> <span
															class="sidebar-mini"> PO </span> <span
															class="sidebar-normal"><fmt:message
																	key="prelevemnentsoneoff" /> </span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>
















								</ul>
							</div></li>

					</C:otherwise>
				</C:choose>




				<%--droit voir prelevement --%>
			</C:when>
		</C:choose>


		<C:choose>
			<C:when test="${BIN3=='BIN3'}">
				<%--droit voir Abonnee --%>







				<C:choose>
					<C:when test="${param.active=='4'}">
						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#formsExamples" aria-expanded="true">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/person_pin_white.png">
									<fmt:message key="abonnee" />

									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="formsExamples">
								<ul class="nav">



									<C:choose>
										<C:when test="${BIN311=='BIN311'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA311=='BINGA311'}">
													<%--droit voir liste compte --%>


													<C:choose>
														<C:when test="${param.fils=='1'}">


															<li class="nav-item active"><a class="nav-link"
																href="servletListUser?page=1"> <span
																	class="sidebar-mini"> AB </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeabonnee" />
																</span>
															</a></li>

														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletListUser?page=1"> <span
																	class="sidebar-mini"> AB </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeabonnee" />
																</span>
															</a></li>


														</C:otherwise>
													</C:choose>










													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>





											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>












									<C:choose>
										<C:when test="${BIN322=='BIN322'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA322=='BINGA322'}">
													<%--droit voir liste compte --%>








													<C:choose>
														<C:when test="${param.fils=='2'}">

															<li class="nav-item active"><a class="nav-link"
																href="servletListeTelephone?page=1"> <span
																	class="sidebar-mini"> AB </span> <span
																	class="sidebar-normal"><fmt:message
																			key="telephoneabonnee" /> </span>
															</a></li>


														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletListeTelephone?page=1"> <span
																	class="sidebar-mini"> AB </span> <span
																	class="sidebar-normal"><fmt:message
																			key="telephoneabonnee" /> </span>
															</a></li>


														</C:otherwise>
													</C:choose>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

















								</ul>
							</div></li>


					</C:when>
					<C:otherwise>
						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#formsExamples">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/person_pin_white.png">

									<fmt:message key="abonnee" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="formsExamples">
								<ul class="nav">




									<C:choose>
										<C:when test="${BIN311=='BIN311'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA311=='BINGA311'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListUser?page=1"> <span
															class="sidebar-mini"> AB </span> <span
															class="sidebar-normal"><fmt:message
																	key="listeabonnee" /> </span>
													</a></li>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>










									<C:choose>
										<C:when test="${BIN322=='BIN322'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA322=='BINGA322'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListeTelephone?page=1"> <span
															class="sidebar-mini"> AB </span> <span
															class="sidebar-normal"><fmt:message
																	key="telephoneabonnee" /> </span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>










								</ul>
							</div></li>



					</C:otherwise>
				</C:choose>



				<%--droit voir Abonnee --%>

			</C:when>
		</C:choose>






































		<C:choose>
			<C:when test="${BIN4=='BIN4'}">
				<%--droit voir Fichier --%>




				<C:choose>
					<C:when test="${param.active=='5'}">
						<li class="nav-item active"><a class="nav-link"
							data-toggle="collapse" href="#tablesExamples"
							aria-expanded="true">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/insert_drive_file_white.png">
									<fmt:message key="fichier" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="tablesExamples">
								<ul class="nav">



									<C:choose>
										<C:when test="${BIN411=='BIN411'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA411=='BINGA411'}">
													<%--droit voir liste compte --%>








													<C:choose>
														<C:when test="${param.fils=='1'}">

															<li class="nav-item active"><a class="nav-link"
																href="servletfichier?page=1"> <span
																	class="sidebar-mini"> F </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="fichierrecus" />
																</span>
															</a></li>

														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletfichier?page=1"> <span
																	class="sidebar-mini"> F </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="fichierrecus" />
																</span>
															</a></li>

														</C:otherwise>
													</C:choose>











													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>




											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>










									<C:choose>
										<C:when test="${BIN422=='BIN422'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA422=='BINGA422'}">
													<%--droit voir liste compte --%>







													<C:choose>
														<C:when test="${param.fils=='2'}">

															<li class="nav-item active "><a class="nav-link"
																href="servletFichierDoublon?page=1"> <span
																	class="sidebar-mini"> F </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="fichierdoublon" />
																</span>
															</a></li>

														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletFichierDoublon?page=1"> <span
																	class="sidebar-mini"> F </span> <span
																	class="sidebar-normal"><fmt:message
																			key="fichierdoublon" /> </span>
															</a></li>


														</C:otherwise>
													</C:choose>













													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>




											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






								</ul>
							</div></li>




					</C:when>
					<C:otherwise>

						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#tablesExamples">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/insert_drive_file_white.png">
									<fmt:message key="fichier" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="tablesExamples">
								<ul class="nav">


									<C:choose>
										<C:when test="${BIN411=='BIN411'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA411=='BINGA411'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletfichier?page=1"> <span
															class="sidebar-mini"> F </span> <span
															class="sidebar-normal"> <fmt:message
																	key="fichierrecus" />
														</span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>


									<C:choose>
										<C:when test="${BIN422=='BIN422'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA422=='BINGA422'}">
													<%--droit voir liste compte --%>








													<li class="nav-item "><a class="nav-link"
														href="servletFichierDoublon?page=1"> <span
															class="sidebar-mini"> F </span> <span
															class="sidebar-normal"><fmt:message
																	key="fichierdoublon" />
																<fmt:message key="fichierdoublon" /> </span>
													</a></li>







													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>










								</ul>
							</div></li>




					</C:otherwise>
				</C:choose>


				<%--droit voir Fichier --%>

			</C:when>
		</C:choose>




		<C:choose>
			<C:when test="${BIN5=='BIN5'}">
				<%--droit voir Erreur --%>





				<C:choose>
					<C:when test="${param.active=='6'}">

						<li class="nav-item active"><a class="nav-link"
							data-toggle="collapse" href="#mapsExamples" aria-expanded="true">

								<p>
									<img class="mimf" src="TEMPLATE/assets/myimg/error_white.png">
									Erreur <b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="mapsExamples">
								<ul class="nav">




									<C:choose>
										<C:when test="${BIN511=='BIN511'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA511=='BINGA511'}">
													<%--droit voir liste compte --%>


													<C:choose>
														<C:when test="${param.fils=='1'}">

															<li class="nav-item active"><a class="nav-link"
																href="servletErreurFichier?page=1"> <span
																	class="sidebar-mini"> ER </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="erreursurfichier" />
																</span>
															</a></li>

														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletErreurFichier?page=1"> <span
																	class="sidebar-mini"> ER </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="erreursurfichier" />
																</span>
															</a></li>

														</C:otherwise>
													</C:choose>
















													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>











									<C:choose>
										<C:when test="${BIN522=='BIN522'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA522=='BINGA522'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='2'}">

															<li class="nav-item active"><a class="nav-link"
																href="servletErreruTerminal?page=1"> <span
																	class="sidebar-mini"> ER </span> <span
																	class="sidebar-normal">Terminal </span>
															</a></li>

														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletErreruTerminal?page=1"> <span
																	class="sidebar-mini"> ER </span> <span
																	class="sidebar-normal">Terminal </span>
															</a></li>

														</C:otherwise>
													</C:choose>










													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>





											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>












								</ul>
							</div></li>




					</C:when>
					<C:otherwise>

						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#mapsExamples">

								<p>
									<img class="mimf" src="TEMPLATE/assets/myimg/error_white.png">
									Erreur <b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="mapsExamples">
								<ul class="nav">

									<C:choose>
										<C:when test="${BIN511=='BIN511'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA511=='BINGA511'}">
													<%--droit voir liste compte --%>









													<li class="nav-item "><a class="nav-link"
														href="servletErreurFichier?page=1""> <span
															class="sidebar-mini"> ER </span> <span
															class="sidebar-normal"> <fmt:message
																	key="erreursurfichier" />
														</span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>




									<C:choose>
										<C:when test="${BIN522=='BIN522'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA522=='BINGA522'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletErreruTerminal?page=1"> <span
															class="sidebar-mini"> ER </span> <span
															class="sidebar-normal">Terminal </span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>










								</ul>
							</div></li>





					</C:otherwise>
				</C:choose>




				<%--droit voir Erreur --%>

			</C:when>
		</C:choose>

























		<C:choose>
			<C:when test="${BIN6=='BIN6'}">
				<%--droit voir prelevement --%>

				<C:choose>
					<C:when test="${param.active=='7'}">
						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#mapsExampless" aria-expanded="true">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/account_circle_white.png">
									User <b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="mapsExampless">
								<ul class="nav">


									<C:choose>
										<C:when test="${BIN611=='BIN611'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA611=='BINGA611'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="create"> <span class="sidebar-mini"> US </span>
															<span class="sidebar-normal"> <fmt:message
																	key="creerutilisateur" />
														</span>
													</a></li>


													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>


											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>




									<C:choose>
										<C:when test="${BIN622=='BIN622'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA622=='BINGA622'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='2'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListeUserSystem?page=1"> <span
																	class="sidebar-mini"> US </span> <span
																	class="sidebar-normal"><fmt:message
																			key="listutilisateur" /></span>
															</a></li>


														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListeUserSystem?page=1"> <span
																	class="sidebar-mini"> US </span> <span
																	class="sidebar-normal"><fmt:message
																			key="listutilisateur" /></span>
															</a></li>


														</C:otherwise>
													</C:choose>



													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>


											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>








								</ul>
							</div></li>




					</C:when>
					<C:otherwise>


						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#mapsExampless">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/account_circle_white.png">
									User <b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="mapsExampless">
								<ul class="nav">


									<C:choose>
										<C:when test="${BIN611=='BIN611'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA611=='BINGA611'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="create"> <span class="sidebar-mini"> US </span>
															<span class="sidebar-normal"><fmt:message
																	key="creerutilisateur" /> </span>
													</a></li>




													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>


									<C:choose>
										<C:when test="${BIN622=='BIN622'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA622=='BINGA622'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListeUserSystem?page=1"> <span
															class="sidebar-mini"> US </span> <span
															class="sidebar-normal"><fmt:message
																	key="listutilisateur" /></span>
													</a></li>



													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>







								</ul>
							</div></li>



					</C:otherwise>
				</C:choose>


				<%--droit voir prelevement --%>

			</C:when>
		</C:choose>





















		<C:choose>
			<C:when test="${BIN7=='BIN7'}">
				<%--droit voir contensieur --%>


				<C:choose>
					<C:when test="${param.active=='8'}">
						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#mapsContensieu"
							aria-expanded="true">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/content_paste_white.png">
									<fmt:message key="contensieux" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="mapsContensieu">
								<ul class="nav">



									<C:choose>
										<C:when test="${BIN711=='BIN711'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA711=='BINGA711'}">
													<%--droit voir liste compte --%>





													<C:choose>
														<C:when test="${param.fils=='1'}">


															<li class="nav-item active"><a class="nav-link"
																href="servletListReclamations?page=1"> <span
																	class="sidebar-mini"> CO </span> <span
																	class="sidebar-normal"><fmt:message
																			key="liscontensieu" /> </span>
															</a></li>


														</C:when>
														<C:otherwise>

															<li class="nav-item "><a class="nav-link"
																href="servletListReclamations?page=1"> <span
																	class="sidebar-mini"> CO </span> <span
																	class="sidebar-normal"><fmt:message
																			key="liscontensieu" /> </span>
															</a></li>



														</C:otherwise>
													</C:choose>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>












									<C:choose>
										<C:when test="${BIN722=='BIN722'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA722=='BINGA722'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='2'}">

															<li class="nav-item active"><a
																class="nav-link active"
																href="servletContensieuResolut?page=1"> <span
																	class="sidebar-mini"> US </span> <span
																	class="sidebar-normal"><fmt:message
																			key="listcontensieuresolut" /></span>
															</a></li>

														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletContensieuResolut?page=1"> <span
																	class="sidebar-mini"> US </span> <span
																	class="sidebar-normal"><fmt:message
																			key="listcontensieuresolut" /></span>
															</a></li>


														</C:otherwise>
													</C:choose>







													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>


























								</ul>
							</div></li>





					</C:when>
					<C:otherwise>

						<li class="nav-item "><a class="nav-link"
							data-toggle="collapse" href="#mapsContensieu">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/content_paste_white.png">
									<fmt:message key="contensieux" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="mapsContensieu">
								<ul class="nav">

									<C:choose>
										<C:when test="${BIN711=='BIN711'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA711=='BINGA711'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListReclamations?page=1"> <span
															class="sidebar-mini"> CO </span> <span
															class="sidebar-normal"> <fmt:message
																	key="liscontensieu" />
														</span>
													</a></li>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>



											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>



									<C:choose>
										<C:when test="${BIN722=='BIN722'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA722=='BINGA722'}">
													<%--droit voir liste compte --%>


													<li class="nav-item "><a class="nav-link"
														href="servletContensieuResolut?page=1"> <span
															class="sidebar-mini"> US </span> <span
															class="sidebar-normal"><fmt:message
																	key="listcontensieuresolut" /></span>
													</a></li>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>


											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>







								</ul>
							</div></li>





					</C:otherwise>
				</C:choose>




				<%--droit voir contensieur --%>

			</C:when>
		</C:choose>







		<C:choose>
			<C:when test="${BIN8=='BIN8'}">
				<%--droit voir diplomate --%>




				<C:choose>
					<C:when test="${param.active=='9'}">
						<li class="nav-item active"><a class="nav-link"
							data-toggle="collapse" href="#pagesDiplomates"
							aria-expanded="true">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/card_travel_white.png">

									<fmt:message key="diplomate" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="pagesDiplomates">
								<ul class="nav">

									<C:choose>
										<C:when test="${BIN811=='BIN811'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA811=='BINGA811'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='1'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletCreerdiplomate"> <span
																	class="sidebar-mini"> US </span> <span
																	class="sidebar-normal"><fmt:message
																			key="creerdiplomate" /></span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletCreerdiplomate"> <span
																	class="sidebar-mini"> US </span> <span
																	class="sidebar-normal"><fmt:message
																			key="creerdiplomate" /></span>
															</a></li>
														</C:otherwise>
													</C:choose>




													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>


											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>





									<C:choose>
										<C:when test="${BIN822=='BIN822'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA822=='BINGA822'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='2'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListRequeteDiplomate?page=1"> <span
																	class="sidebar-mini"> RD </span> <span
																	class="sidebar-normal"><fmt:message
																			key="requettediplomate" /> </span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListRequeteDiplomate?page=1"> <span
																	class="sidebar-mini"> RD </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="requettediplomate" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>



















									<C:choose>
										<C:when test="${BIN14=='BIN14'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA14=='BINGA14'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='3'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletDemande"> <span class="sidebar-mini">
																		D </span> <span class="sidebar-normal"> <fmt:message
																			key="demandes" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletDemande"> <span class="sidebar-mini">
																		D </span> <span class="sidebar-normal"> <fmt:message
																			key="demandes" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN14=='BIN14'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA14=='BINGA14'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='4'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletDoubleTaxe"> <span class="sidebar-mini">
																		D </span> <span class="sidebar-normal"> <fmt:message
																			key="doubletaxe" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletDoubleTaxe"> <span class="sidebar-mini">
																		D </span> <span class="sidebar-normal"> <fmt:message
																			key="doubletaxe" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>

													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>

























								</ul>
							</div></li>


					</C:when>
					<C:otherwise>
						<li class="nav-item"><a class="nav-link"
							data-toggle="collapse" href="#pagesDiplomates"
							aria-expanded="false">

								<p>
									<img class="mimf"
										src="TEMPLATE/assets/myimg/card_travel_white.png">
									<fmt:message key="diplomate" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="pagesDiplomates">
								<ul class="nav">

									<C:choose>
										<C:when test="${BIN811=='BIN811'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA811=='BINGA811'}">
													<%--droit voir liste compte --%>


													<li class="nav-item "><a class="nav-link"
														href="servletCreerdiplomate"> <span
															class="sidebar-mini"> US </span> <span
															class="sidebar-normal"> <fmt:message
																	key="creerdiplomate" /></span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>


									<C:choose>
										<C:when test="${BIN822=='BIN822'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA822=='BINGA822'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListRequeteDiplomate?page=1"> <span
															class="sidebar-mini"> RD </span> <span
															class="sidebar-normal"><fmt:message
																	key="requettediplomate" /> </span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN14=='BIN14'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA14=='BINGA14'}">
													<%--droit voir liste compte --%>


													<li class="nav-item "><a class="nav-link"
														href="servletDemande"> <span class="sidebar-mini">
																D </span> <span class="sidebar-normal"> <fmt:message
																	key="demandes" />
														</span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>




									<C:choose>
										<C:when test="${BIN14=='BIN14'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA14=='BINGA14'}">
													<%--droit voir liste compte --%>


													<li class="nav-item "><a class="nav-link"
														href="servletDoubleTaxe"> <span class="sidebar-mini">
																D </span> <span class="sidebar-normal"> <fmt:message
																	key="doubletaxe" />
														</span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>
















								</ul>
							</div></li>


					</C:otherwise>
				</C:choose>

				<%--droit voir diplomate --%>

			</C:when>
		</C:choose>











		<C:choose>
			<C:when test="${BIN200=='BIN200'}">
				<%--droit voir liste compte --%>



				<C:choose>
					<C:when test="${param.active=='10'}">

						<li class="nav-item active"><a class="nav-link"
							data-toggle="collapse" href="#pagesManagerrequest"
							aria-expanded="true">

								<p>
									<img class="mimf" src="TEMPLATE/assets/myimg/topic_white.png">
									<fmt:message key="gestRequette" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse show" id="pagesManagerrequest">
								<ul class="nav">


									<C:choose>
										<C:when test="${BIN2001=='BIN2001'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA2001=='BINGA2001'}">
													<%--droit voir liste compte --%>



													<C:choose>
														<C:when test="${param.fils=='1'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListNumExclu"> <span
																	class="sidebar-mini"> EN </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="exclurnumber" />
																</span>
															</a></li>

														</C:when>
														<C:otherwise>
															<li class="nav-item"><a class="nav-link"
																href="servletListNumExclu"> <span
																	class="sidebar-mini"> EN </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="exclurnumber" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>


													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>








											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>




									<C:choose>
										<C:when test="${BIN2004=='BIN2004'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA2004=='BINGA2004'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='2'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletCreateSuperUser"> <span
																	class="sidebar-mini"> CS </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="creatsupuser" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletCreateSuperUser"> <span
																	class="sidebar-mini"> CS </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="creatsupuser" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>






											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>







									<C:choose>
										<C:when test="${BIN2005=='BIN2005'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA2005=='BINGA2005'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='3'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletTerminauxExterne"> <span
																	class="sidebar-mini"> LT </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeTerminauxPay" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletTerminauxExterne"> <span
																	class="sidebar-mini"> LT </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeTerminauxPay" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>






											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>







									<C:choose>
										<C:when test="${BIN2002=='BIN2002'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA2002=='BINGA2002'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='4'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletListeCompteSurclass"> <span
																	class="sidebar-mini"> LCS </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeCompteSurtaxe" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletListeCompteSurclass"> <span
																	class="sidebar-mini"> LCS </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeCompteSurtaxe" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>






											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN2003=='BIN2003'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA2003=='BINGA2003'}">
													<%--droit voir liste compte --%>




													<C:choose>
														<C:when test="${param.fils=='5'}">
															<li class="nav-item active"><a class="nav-link"
																href="servletTelephoneDouanePb"> <span
																	class="sidebar-mini"> TPB </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeTerminauxDouanePb" />
																</span>
															</a></li>
														</C:when>
														<C:otherwise>
															<li class="nav-item "><a class="nav-link"
																href="servletTelephoneDouanePb"> <span
																	class="sidebar-mini"> TPB </span> <span
																	class="sidebar-normal"> <fmt:message
																			key="listeTerminauxDouanePb" />
																</span>
															</a></li>
														</C:otherwise>
													</C:choose>





													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>






											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>









								</ul>
							</div></li>


					</C:when>
					<C:otherwise>
						<li class="nav-item"><a class="nav-link"
							data-toggle="collapse" href="#pagesManagerrequest"
							aria-expanded="false">

								<p>
									<img class="mimf" src="TEMPLATE/assets/myimg/topic_white.png">
									<fmt:message key="gestRequette" />
									<b class="caret"></b>
								</p>
						</a>
							<div class="collapse" id="pagesManagerrequest">
								<ul class="nav">





									<C:choose>
										<C:when test="${BIN2001=='BIN2001'}">
											<%--droit voir liste Demand --%>
											<C:choose>
												<C:when test="${BINGA2001=='BINGA2001'}">
													<%--droit voir liste compte --%>




													<li class="nav-item "><a class="nav-link"
														href="servletListNumExclu"> <span class="sidebar-mini">
																EN </span> <span class="sidebar-normal"> <fmt:message
																	key="exclurnumber" />
														</span>
													</a></li>


													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>
											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>




									<C:choose>
										<C:when test="${BIN2004=='BIN2004'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA2004=='BINGA2004'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletCreateSuperUser"> <span
															class="sidebar-mini"> EN </span> <span
															class="sidebar-normal"> <fmt:message
																	key="creatsupuser" />
														</span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>








									<C:choose>
										<C:when test="${BIN2005=='BIN2005'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA2005=='BINGA2005'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletTerminauxExterne"> <span
															class="sidebar-mini"> LT </span> <span
															class="sidebar-normal"> <fmt:message
																	key="listeTerminauxPay" />
														</span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






									<C:choose>
										<C:when test="${BIN2002=='BIN2002'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA2002=='BINGA2002'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletListeCompteSurclass"> <span
															class="sidebar-mini"> LTS </span> <span
															class="sidebar-normal"> <fmt:message
																	key="listeCompteSurtaxe" />
														</span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>








									<C:choose>
										<C:when test="${BIN2003=='BIN2003'}">
											<%--droit voir liste Demand --%>

											<C:choose>
												<C:when test="${BINGA2003=='BINGA2003'}">
													<%--droit voir liste compte --%>



													<li class="nav-item "><a class="nav-link"
														href="servletTelephoneDouanePb"> <span
															class="sidebar-mini"> TPB </span> <span
															class="sidebar-normal"> <fmt:message
																	key="listeTerminauxDouanePb" />
														</span>
													</a></li>
													<%--droit voir liste Demand --%>
												</C:when>
											</C:choose>

											<%--droit voir liste Demand --%>
										</C:when>
									</C:choose>






								</ul>
							</div></li>


					</C:otherwise>
				</C:choose>








				<%--droit voir liste compte --%>
			</C:when>
		</C:choose>















	</ul>
</div>

</div>
