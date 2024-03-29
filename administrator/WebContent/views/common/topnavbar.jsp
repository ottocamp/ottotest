<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<div class="">
					<a href="index.html" class="logo"> <img
						src="<%=request.getContextPath()%>/resources/assets/images/logo.png"
						alt="logo" class="logo-lg"> <img
						src="<%=request.getContextPath()%>/resources/assets/images/logo_sm.png"
						alt="logo" class="logo-sm hidden">
					</a>
				</div>
			</div>

			<!-- Top navbar -->
			<div class="navbar navbar-default" role="navigation">
				<div class="container">
					<div class="">

						<!-- Mobile menu button -->
						<div class="pull-left">
							<button type="button"
								class="button-menu-mobile visible-xs visible-sm">
								<i class="fa fa-bars"></i>
							</button>
							<span class="clearfix"></span>
						</div>

						<!-- Top nav left menu -->
						<ul class="nav navbar-nav hidden-sm hidden-xs top-navbar-items">
							<li><a href="#">About</a></li>
							<li><a href="#">Help</a></li>
							<li><a href="#">Contact</a></li>
						</ul>

						<!-- Top nav Right menu -->
						<ul
							class="nav navbar-nav navbar-right top-navbar-items-right pull-right">
							<li class="hidden-xs">
								<form role="search" class="navbar-left app-search pull-left">
									<input type="text" placeholder="Search..." class="form-control">
									<a href=""><i class="fa fa-search"></i></a>
								</form>
							</li>
							<li class="dropdown top-menu-item-xs"><a href="#"
								data-target="#" class="dropdown-toggle menu-right-item"
								data-toggle="dropdown" aria-expanded="true"> <i
									class="mdi mdi-bell"></i> <span class="label label-danger">3</span>
							</a>
								<ul class="dropdown-menu p-0 dropdown-menu-lg">
									<!--<li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>-->
									<li class="list-group notification-list" style="height: 267px;">
										<div class="slimScrollDiv"
											style="position: relative; overflow: hidden; width: auto; height: 267px;">
											<div class="slimscroll"
												style="overflow: hidden; width: auto; height: 267px;">
												<!-- list item-->
												<a href="javascript:void(0);" class="list-group-item">
													<div class="media">
														<div class="media-left p-r-10">
															<em class="fa fa-diamond bg-primary"></em>
														</div>
														<div class="media-body">
															<h5 class="media-heading">A new order has been
																placed A new order has been placed</h5>
															<p class="m-0">
																<small>There are new settings available</small>
															</p>
														</div>
													</div>
												</a>

												<!-- list item-->
												<a href="javascript:void(0);" class="list-group-item">
													<div class="media">
														<div class="media-left p-r-10">
															<em class="fa fa-cog bg-warning"></em>
														</div>
														<div class="media-body">
															<h5 class="media-heading">New settings</h5>
															<p class="m-0">
																<small>There are new settings available</small>
															</p>
														</div>
													</div>
												</a>

												<!-- list item-->
												<a href="javascript:void(0);" class="list-group-item">
													<div class="media">
														<div class="media-left p-r-10">
															<em class="fa fa-bell-o bg-custom"></em>
														</div>
														<div class="media-body">
															<h5 class="media-heading">Updates</h5>
															<p class="m-0">
																<small>There are <span
																	class="text-primary font-600">2</span> new updates
																	available
																</small>
															</p>
														</div>
													</div>
												</a>

												<!-- list item-->
												<a href="javascript:void(0);" class="list-group-item">
													<div class="media">
														<div class="media-left p-r-10">
															<em class="fa fa-user-plus bg-danger"></em>
														</div>
														<div class="media-body">
															<h5 class="media-heading">New user registered</h5>
															<p class="m-0">
																<small>You have 10 unread messages</small>
															</p>
														</div>
													</div>
												</a>

												<!-- list item-->
												<a href="javascript:void(0);" class="list-group-item">
													<div class="media">
														<div class="media-left p-r-10">
															<em class="fa fa-diamond bg-primary"></em>
														</div>
														<div class="media-body">
															<h5 class="media-heading">A new order has been
																placed A new order has been placed</h5>
															<p class="m-0">
																<small>There are new settings available</small>
															</p>
														</div>
													</div>
												</a>

												<!-- list item-->
												<a href="javascript:void(0);" class="list-group-item">
													<div class="media">
														<div class="media-left p-r-10">
															<em class="fa fa-cog bg-warning"></em>
														</div>
														<div class="media-body">
															<h5 class="media-heading">New settings</h5>
															<p class="m-0">
																<small>There are new settings available</small>
															</p>
														</div>
													</div>
												</a>
											</div>
											<div class="slimScrollBar"
												style="background: rgb(158, 165, 171); width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
											<div class="slimScrollRail"
												style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
										</div>
									</li>
									<!--<li>-->
									<!--<a href="javascript:void(0);" class="list-group-item text-right">-->
									<!--<small class="font-600">See all notifications</small>-->
									<!--</a>-->
									<!--</li>-->
								</ul></li>

							<li class="dropdown top-menu-item-xs"><a href=""
								class="dropdown-toggle menu-right-item profile"
								data-toggle="dropdown" aria-expanded="true"><img
									src="<%=request.getContextPath()%>/resources/assets/images/users/avatar-1.jpg"
									alt="user-img" class="img-circle"> </a>
								<ul class="dropdown-menu">
									<li><a href="javascript:void(0)"><i
											class="ti-user m-r-10"></i> Profile</a></li>
									<li><a href="javascript:void(0)"><i
											class="ti-settings m-r-10"></i> Settings</a></li>
									<li><a href="javascript:void(0)"><i
											class="ti-lock m-r-10"></i> Lock screen</a></li>
									<li class="divider"></li>
									<li><a href="javascript:void(0)"><i
											class="ti-power-off m-r-10"></i> Logout</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
				<!-- end container -->
			</div>
			<!-- end navbar -->
		</div>
</body>
</html>