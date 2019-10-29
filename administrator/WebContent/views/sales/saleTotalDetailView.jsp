<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, sales.model.vo.*, java.text.DecimalFormat"%>
    
<%
	ArrayList<SiteYearSales> sysList = (ArrayList<SiteYearSales>)request.getAttribute("sysList");
	ArrayList<SiteMonthSales> smsList = (ArrayList<SiteMonthSales>)request.getAttribute("smsList");
	ArrayList<SiteDaySales> sdsList = (ArrayList<SiteDaySales>)request.getAttribute("sdsList");
	ArrayList<CampSales> csList = (ArrayList<CampSales>)request.getAttribute("csList");
	ArrayList<TopCampSales> tcsList = (ArrayList<TopCampSales>)request.getAttribute("tcsList");
	ArrayList<TopMemberSales> tmsList = (ArrayList<TopMemberSales>)request.getAttribute("tmsList");
	
	DecimalFormat formatter = new DecimalFormat("#,###,###,###");
	
	String year = sysList.get(0).getsYear();
	int index = 0;
	int index1 = 0;
	int index2 = 0;
	int index3 = 0;
	
	int yearSales = sysList.get(0).getsCost();
	int yearCount = sysList.get(0).getsCount();
	int campNum = tcsList.size();
	int MemberNum = tmsList.size();
	
	int campAvgSales = Math.round(yearSales/campNum);
	int campAvgCount = Math.round(yearCount/campNum);
	
	int MemberAvgSales = Math.round(yearSales/MemberNum);
	int MemberAvgCount = Math.round(yearCount/MemberNum);
	
%>   
	
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
	
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<!-- 아이콘 cdn -->
		<script src="https://kit.fontawesome.com/ec9c0ffb05.js" crossorigin="anonymous"></script>
		
		<meta charset="utf-8" />
		<title>전체 매출내역 조회 페이지</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
		<meta content="Coderthemes" name="author" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/assets/images/favicon.ico">
		
		 <!--Morris Chart CSS -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/plugins/morris/morris.css">
		
		<!-- Bootstrap core CSS -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/bootstrap.min.css" rel="stylesheet">
		<!-- MetisMenu CSS -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/metisMenu.min.css" rel="stylesheet">
		<!-- Icons CSS -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/icons.css" rel="stylesheet">
		<!-- Custom styles for this template -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/style.css" rel="stylesheet">
		
		<!-- DataTables -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
 
		
		
		<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses'],
          ['2004',  1000,      400],
          ['2005',  1170,      460],
          ['2006',  660,       1120],
          ['2007',  1030,      540]
        ]);

        var options = {
          title: 'Company Performance',
          curveType: 'function',
          legend: { position: 'bottom' }
        };

        var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

        chart.draw(data, options);
      }
    </script>
    
    <style>

	#count,#cost{
		cursor: pointer;
	
	}	
	
	
	</style>
		
</head>
<body>

	<div id="page-wrapper">

		<!-- Top Bar Start -->
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
		<!-- Top Bar End -->


		<!-- Page content start -->
		<div class="page-contentbar">

			<!--left navigation start-->
			<aside class="sidebar-navigation">
				<div class="scrollbar-wrapper">
					<div>
						<button type="button"
							class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
							<i class="mdi mdi-close"></i>
						</button>
						<!-- User Detail box -->
						<div class="user-details">
							<div class="pull-left">
								<img
									src="<%=request.getContextPath()%>/resources/assets/images/users/avatar-1.jpg"
									alt="" class="thumb-md img-circle">
							</div>
							<div class="user-info">
								<a href="#">Stanley Jones</a>
								<p class="text-muted m-0">Administrator</p>
							</div>
						</div>
						<!--- End User Detail box -->

						<!-- Left Menu Start -->
						<ul class="metisMenu nav" id="side-menu">
							<li><a href="<%=request.getContextPath()%>"><i
									class="ti-home"></i> 관리자 메인 </a></li>

							<li><a href="<%=request.getContextPath()%>/reservation.li"><span
									class="label label-custom pull-right">11</span> <i
									class="ti-paint-bucket"></i> 예약관리 </a></li>

							<li><a href="javascript: void(0);" aria-expanded="true"><i
									class="ti-light-bulb"></i> 게시판 관리 <span class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="components-range-slider.html">게시글 관리</a></li>
									<li><a href="components-alerts.html">댓글 관리</a></li>

								</ul></li>

							<li><a href="<%=request.getContextPath()%>/userGrade.li"><i
									class="ti-spray"></i> 회원등급관리 </a></li>

							<li><a href="javascript: void(0);" aria-expanded="true"><i
									class="ti-pencil-alt"></i> 공지사항 및 문의답변 <span class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="forms-general.html">공지사항</a></li>
									<li><a href="<%=request.getContextPath()%>/Question.li">문의답변</a></li>
								</ul></li>

							<li class=""><a href="javascript: void(0);"
								aria-expanded="false"><i class="ti-menu-alt"></i> 매출내역확인 <span
									class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false"
									style="height: 0px;">
									<li><a href="<%= request.getContextPath() %>/views/sales/salesTotalView.jsp">전체 매출내역</a></li>
									<li><a href="<%=request.getContextPath()%>/salesList.sl">사업장별 매출내역</a></li>
								</ul></li>


							<li class=""><a href="javascript: void(0);"
								aria-expanded="false"><i class="ti-files"></i> 사업장 관리 <span
									class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false"
									style="height: 0px;">
									<li><a href="<%= request.getContextPath() %>/campList.cl">사업장 승인</a></li>
									<li><a href="pages-register.html">사업장 메뉴2</a></li>
									<li><a href="pages-forget-password.html">사업장 메뉴3</a></li>
								</ul></li>


						</ul>
					</div>
				</div>
				<!--Scrollbar wrapper-->
			</aside>
			<!--left navigation end-->

			<!-- START PAGE CONTENT -->
			<div id="page-right-content">

				<div class="container">
					<div class="row">
						<div class="col-sm-12">
						<h4 class="m-t-0 header-title">오또캠프 전체 매출내역</h4>
							<div class="btn-group">
                                        <button type="button" class="btn btn-default" onclick="Sales(this);">2017</button>
                                        <button type="button" class="btn btn-default" onclick="Sales(this);">2018</button>
                                        <button type="button" class="btn btn-default" onclick="Sales(this);">2019</button>
                                        <button type="button" class="btn btn-default" onclick="etcSales();">기타</button>
                                        &nbsp;&nbsp;<p style="display: none;">시작 일자 : </p><input type="date" style="height: 34px; display: none;" id="startDay">
                                        &nbsp;&nbsp;<p style="display: none;">종료 일자 : </p><input type="date" style="height: 34px; display: none;" id="endDay">                                       
                             </div>
                              &nbsp; <button type="button" class="btn btn-primary" style="display: none;" onclick="searchSales();">검색</button>
						</div>
					</div> <br><br>
					<!--end row -->


					<div class="row">
						<div class="col-sm-12">
						<h4 class="m-t-0 header-title"><%= sysList.get(0).getsYear() %>년도 상세매출내역</h4>
						<div class="card-box widget-inline">
									<div class="row">
										<div class="col-lg-4 col-sm-6">
											<div class="widget-inline-box text-center">
												<h3 class="m-t-10"><i class="text-primary fas fa-won-sign"></i> <b data-plugin="counterup"><%= formatter.format(sysList.get(0).getsCost()) %></b></h3>
												<p class="text-muted">총 매출액</p>
											</div>
										</div>

										<div class="col-lg-4 col-sm-6">
											<div class="widget-inline-box text-center">
												<h3 class="m-t-10"><i class="text-warning mdi mdi-diamond"></i> <b data-plugin="counterup"><%= formatter.format(Math.round((sysList.get(0).getsCost()*0.15))) %></b></h3>
												<p class="text-muted">총 순이익</p>
											</div>
										</div>

										<div class="col-lg-4 col-sm-6">
											<div class="widget-inline-box text-center">
												<h3 class="m-t-10"><i class="text-info mdi mdi-account-check"></i> <b data-plugin="counterup"><%= sysList.get(0).getsCount() %></b></h3>
												<p class="text-muted">총 이용건수</p>
											</div>
										</div>

									</div>
								</div>
						
						
						
						
						</div>
					</div>
					<!-- end row -->
					
	
					
					<div class="row">
                            <div class="col-lg-6">
                                <div class="card-box">
                                    <h4 class="m-t-0"><%= year %>년 매출액 분석</h4>
                                    
                                   <div id="chartContainer" style="height: 370px; width: 100%; "></div>
                                   
                                </div>
                            </div> <!-- end col -->

                            <div class="col-lg-6">
                                <div class="card-box">
                                    <h4 class="m-t-0"><%= year %>년 이용건수 분석</h4>
                                    
                                   <div id="chartContainer2" style="height: 370px; width: 100%; "></div>
                                   <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>	
                                </div>
                            </div> <!-- end col -->
                        </div>
					
					<div class="row">
						<div class="col-sm-12 ">
						<div class="card-box">
						<h4 class="m-t-0 header-title"><%= year %>년 월별 매출 내역</h4>
						 <div class="table-responsive m-b-20">
						 <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                        	<th>매출월</th>
                                            <th>매출액</th>
                                            <th>순이익</th>
				                            <th>결제건수</th>
                                            <th>상세보기</th>                         
                                        </tr>
                                        </thead>

                                        <tbody>
                                        <% for(SiteMonthSales sm : smsList) { %>
                                       <tr id="detailTr">
		                                       <td><%= sm.getsMonth() %></td>
		                                       <td><%= formatter.format(sm.getsCost()) %></td>
		                                       <td><%= formatter.format(Math.round(sm.getsCost()*0.15)) %></td>
		                                       <td><%= sm.getsCount() %></td>        
		                                   <td><button class="btn btn-primary btn-xs" data-toggle="modal" data-target=".bs-example-modal-lg" id="detailModal" onclick="dayDetail(this);">상세보기</button></td>
		                                       
                         				</tr>
                                      	<%} %>
                                        </tbody>
                                    </table>
                                </div>
						</div>
						</div>
					</div>

				<div class="row">
                            <div class="col-md-4">
                                <div class="card-box">
                                	<i class="fa fa-info-circle text-muted pull-right inform" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on right"></i>
                                	<h4 class="m-t-0 text-dark">월 평균 이익률</h4>
                                	<h2 class="text-primary text-center m-b-30 m-t-30"><span data-plugin="counterup">15%</span></h2>
                                	<p class="text-muted m-b-0">년간 이익률 :15.0%</p>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="card-box">
                                	<i class="fa fa-info-circle text-muted pull-right inform" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on right"></i>
                                	<h4 class="m-t-0 text-dark">월 평균 수익</h4>
                                	<h2 class="text-success text-center m-b-30 m-t-30"><span data-plugin="counterup"><%= formatter.format(Math.round((sysList.get(0).getsCost()*0.15)/12)) %>원</span></h2>
                                	<p class="m-b-0 text-muted">년간 총 수익: <%= formatter.format(Math.round((sysList.get(0).getsCost()*0.15))) %>원</p>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="card-box">
                                	<i class="fa fa-info-circle text-muted pull-right inform" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on right"></i>
                                	<h4 class="m-t-0 text-dark">월 평균 이용건수</h4>
                                	<h2 class="text-pink text-center m-b-30 m-t-30"><span data-plugin="counterup"><%= Math.round(sysList.get(0).getsCount()/12) %>건</span></h2>
                                	<p class="m-b-0 text-muted">총 이용 건수 : <%= sysList.get(0).getsCount() %> </p>
                                </div>
                            </div>

                        </div>

				<div class="row">
                            <div class="col-lg-6">
                                <div class="card-box">
                                    <h4 class="m-t-0"><%= year %>년 TOP10 사업장 <button class="btn btn-default " data-toggle="modal" data-target="#myModal" style="float: right;">상세보기</button></h4>
                                    <table class="table table table-hover m-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>사업장명</th>
                                                        <th>매출액</th>
                                                      	<th>결제건수</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<% for(TopCampSales tcs : tcsList){ %>
                                                	<tr>
                                                		<th scope="row"><%= ++index %></th>
                                                		<td><%= tcs.getsCampName() %></td>
                                                		<td><%= formatter.format(tcs.getsCost()) %></td>
                                                		<td><%= tcs.getsCount() %></td>
                                                	</tr>
                                                	<%} %>
        
                                                </tbody>
                                            </table>
                                   
                                </div>
                            </div> <!-- end col -->

                            <div class="col-lg-6">
                                <div class="card-box">
                                    <h4 class="m-t-0"><%= year %>년 TOP10 회원 <button class="btn btn-default " data-toggle="modal" data-target="#myModal1" style="float: right;">상세보기</button></h4>
                                    <table class="table table table-hover m-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>회원명</th>
                                                        <th>매출액</th>
                                                      	<th>결제건수</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <% for(TopMemberSales tms : tmsList){ %>
                                                	<tr>
                                                		<th scope="row"><%= ++index1 %></th>
                                                		<td><%= tms.getsUserName() %></td>
                                                		<td><%= formatter.format(tms.getsCost()) %></td>
                                                		<td><%= tms.getsCount() %></td>
                                                	</tr>
                                                	<% if(index1 == 10) break; %>
                                                	
                                                	<%} %>
                                                </tbody>
                                            </table>
                                </div>
                            </div> <!-- end col -->
                        </div>

				</div>
				<!-- end container -->

				<div class="footer">
					<div class="pull-right hidden-xs">
						Project Completed <strong class="text-custom">39%</strong>.
					</div>
					<div>
						<strong>Simple Admin</strong> - Copyright © 2017
					</div>
				</div>
				<!-- end footer -->

			</div>
			<!-- End #page-right-content -->

		</div>
		<!-- end .page-contentbar -->
	</div>
	
	<div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4>오또캠핑 사업장 현황</h4>
                                                    <p>전체 사업장 수 : <%= tcsList.size() %>개 &nbsp;||&nbsp;평균매출 : <%= formatter.format(campAvgSales) %>원 &nbsp;||&nbsp; 평균결제건수 : <%= formatter.format(campAvgCount) %></p>
                                                
                                                </div>
                                                <div class="modal-body">
                                                     <h4 class="modal-title" id="myModalLabel"><%= year %>년 사업장별 매출순위</h4>
                                                   
                                                     <table class="table table table-hover m-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>사업장명</th>
                                                        <th>매출액</th>
                                                      	<th>결제건수</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<% for(TopCampSales tcs : tcsList){ %>
                                                	<tr>
                                                		<th scope="row"><%= ++index2 %></th>
                                                		<td><%= tcs.getsCampName() %></td>
                                                		<td><%= formatter.format(tcs.getsCost()) %></td>
                                                		<td><%= tcs.getsCount() %></td>
                                                	</tr>
                                                	<%} %>
        
                                                </tbody>
                                            </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
                                    
                                    <div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                                                    <h4><%= year %>년 오또캠핑 회원 매출현황</h4>
                                                    <p>전체  결제 회원수 : <%= tmsList.size() %>명 &nbsp;||&nbsp;평균매출 : <%= formatter.format(MemberAvgSales) %>원 &nbsp;||&nbsp; 평균결제건수 : <%= formatter.format(MemberAvgCount) %></p>
                                                
                                                </div>
                                                <div class="modal-body">
                                                     <h4 class="modal-title" id="myModalLabel"><%= year %>년 회원별 매출순위</h4>
                                                   
                                                     <table class="table table table-hover m-0">
                                                <thead>
                                                    <tr>
                                                        <th>#</th>
                                                        <th>회원명</th>
                                                        <th>매출액</th>
                                                      	<th>결제건수</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<% for(TopMemberSales tms : tmsList){ %>
                                                	<tr>
                                                		<th scope="row"><%= ++index3 %></th>
                                                		<td><%= tms.getsUserName() %></td>
                                                		<td><%= formatter.format(tms.getsCost()) %></td>
                                                		<td><%= tms.getsCount() %></td>
                                                	</tr>
                                                	<%} %>
        
                                                </tbody>
                                            </table>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default " data-dismiss="modal">Close</button>
                                                </div>
                                            </div><!-- /.modal-content -->
                                        </div><!-- /.modal-dialog -->
                                    </div><!-- /.modal -->
	
	
	
	 <div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                    <h4 class="modal-title" id="myLargeModalLabel">Large modal</h4>
                </div>
                <div class="modal-body">
               
               <div class="table-responsive m-b-20">
				 	<table class="table table-hover table-bordered">
                              <thead>
                                  <tr>
                                      
                                            <th>날짜</th>
                                            <th>매출액</th>                                 
                                            <th>순이익</th>
                                            <th>결제건수</th>                             
                                        </tr>
                                  </thead>

                                  <tbody id="dayDetailBody">
                               
                                
                                  </tbody>
                              </table>
                     </div>
                 <div></div>
                           
        	<div id="chartContainer1" style="height: 370px; width: 50%; float: left;"></div>
			<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>	
			         
			 <div style="width: 41%; height: 370px; float: right;">
			 		     
			 		    <div class="card-box" style="width: 100%; height: 50%; margin: 0;">
                       	<i class="fa fa-info-circle text-muted pull-right inform" data-toggle="tooltip" data-placement="top" title="" data-original-title="순이익는 매출액의 85%입니다."></i>
                       	<h4 class="m-t-0 text-dark">일 평균 이용건수</h4>
                       	<h2 class="text-primary text-center m-b-30 m-t-30" style="color: #fa5555"><span data-plugin="counterup" id="MonthEa"></span></h2>
                       	<p class="text-muted m-b-0" id="MonthAv"><span class="pull-right"><i class="fa fa-caret-up text-primary m-r-5"></i>10.25%</span></p>
                       </div>
			 		     
			         <div class="card-box" style="width: 100%; height: 50%; margin: 0;">
                       	<i class="fa fa-info-circle text-muted pull-right inform" data-toggle="tooltip" data-placement="top" title="" data-original-title="수수료는 매출액의 15%입니다."></i>
                       	<h4 class="m-t-0 text-dark">일 평균 순이익</h4>
                       	<h2 class="text-primary text-center m-b-30 m-t-30">₩<span data-plugin="counterup" id="earning"></span></h2>
                       	<p class="text-muted m-b-0" id="averageview"><span class="pull-right"><i class="fa fa-caret-up text-primary m-r-5"></i>10.25%</span></p>
                       </div>
                       
                
                </div>
  			<div style="clear: both;"></div>
                     
			        
                </div>    
                     
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
	
	
	
	
	<script type="text/javascript">
	
	function Sales(value){
		
		var year = $(value).text();
		
		location.href="<%= request.getContextPath() %>/total.sa?year="+ year;
			
	}
	
	
	$(function(){
							
			
			var chart = new CanvasJS.Chart("chartContainer", {
				animationEnabled: true,
				theme: "light2",
				title: {
					text: ""
				},
				axisX: {
					valueFormatString: "MMM"
				},
				axisY: {
					prefix: "￦",
					labelFormatter: addSymbols
				},
				toolTip: {
					shared: true
				},
				legend: {
					cursor: "pointer",
					itemclick: toggleDataSeries
				},
				data: [
				{
					type: "column",
					name: "매출액",
					showInLegend: true,
					xValueFormatString: "YYYY MMMM",
					yValueFormatString: "￦###,###,##0",
					dataPoints: [
						{ x: new Date(<%= year %>, 0), y: <%= smsList.get(0).getsCost() %> },
						{ x: new Date(<%= year %>, 1), y: <%= smsList.get(1).getsCost() %> },
						{ x: new Date(<%= year %>, 2), y: <%= smsList.get(2).getsCost() %> },
						{ x: new Date(<%= year %>, 3), y: <%= smsList.get(3).getsCost() %>, indexLabel: "" },
						{ x: new Date(<%= year %>, 4), y: <%= smsList.get(4).getsCost() %> },
						{ x: new Date(<%= year %>, 5), y: <%= smsList.get(5).getsCost() %> },
						{ x: new Date(<%= year %>, 6), y: <%= smsList.get(6).getsCost() %> },
						{ x: new Date(<%= year %>, 7), y: <%= smsList.get(7).getsCost() %> },
						{ x: new Date(<%= year %>, 8), y: <%= smsList.get(8).getsCost() %> },
						{ x: new Date(<%= year %>, 9), y:  <%= smsList.get(9).getsCost() %>},
						{ x: new Date(<%= year %>, 10), y: <%= smsList.get(10).getsCost() %> },
						{ x: new Date(<%= year %>, 11), y: <%= smsList.get(11).getsCost() %> }
					]
				}, 
				{
					type: "line",
					name: "",
					showInLegend: false,
					yValueFormatString: "#,##0건",
					dataPoints: [
						
					]
				},
				{
					type: "area",
					name: "순이익",
					markerBorderColor: "white",
					markerBorderThickness: 2,
					showInLegend: true,
					yValueFormatString: "￦###,###,##0",
					dataPoints: [
						{ x: new Date(<%= year %>, 0), y: <%= Math.round((smsList.get(0).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 1), y: <%= Math.round((smsList.get(1).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 2), y: <%= Math.round((smsList.get(2).getsCost()*0.15)) %>},
						{ x: new Date(<%= year %>, 3), y: <%= Math.round((smsList.get(3).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 4), y: <%= Math.round((smsList.get(4).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 5), y: <%= Math.round((smsList.get(5).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 6), y: <%= Math.round((smsList.get(6).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 7), y: <%= Math.round((smsList.get(7).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 8), y: <%= Math.round((smsList.get(8).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 9), y:  <%= Math.round((smsList.get(9).getsCost()*0.15)) %>},
						{ x: new Date(<%= year %>, 10), y: <%= Math.round((smsList.get(10).getsCost()*0.15)) %> },
						{ x: new Date(<%= year %>, 11), y: <%= Math.round((smsList.get(10).getsCost()*0.15)) %> }
					]
				}]
			});
			chart.render();

			function addSymbols(e) {
				var suffixes = ["", "K", "M", "B"];
				var order = Math.max(Math.floor(Math.log(e.value) / Math.log(1000)), 0);

				if(order > suffixes.length - 1)                	
					order = suffixes.length - 1;

				var suffix = suffixes[order];      
				return CanvasJS.formatNumber(e.value / Math.pow(1000, order)) + suffix;
			}

			function toggleDataSeries(e) {
				if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
					e.dataSeries.visible = false;
				} else {
					e.dataSeries.visible = true;
				}
				e.chart.render();
			}

			
		

			var chart = new CanvasJS.Chart("chartContainer2", {
				animationEnabled: true,  
				title:{
					text: ""
				},
				axisY: {
					title: "",
					valueFormatString: "#0",
					suffix: "건",
					stripLines: [{
						value: <%= sysList.get(0).getsCount() %>/12,
						label: "평균"
					}]
				},
				data: [{
					yValueFormatString: "#,##0건",
					xValueFormatString: "YYYY MMMM",
					type: "spline",
					dataPoints: [
						{x: new Date(<%= year %>, 0), y: <%= smsList.get(0).getsCount() %>},
						{x: new Date(<%= year %>, 1), y: <%= smsList.get(1).getsCount() %>},
						{x: new Date(<%= year %>, 2), y: <%= smsList.get(2).getsCount() %>},
						{x: new Date(<%= year %>, 3), y: <%= smsList.get(3).getsCount() %>},
						{x: new Date(<%= year %>, 4), y: <%= smsList.get(4).getsCount() %>},
						{x: new Date(<%= year %>, 5), y: <%= smsList.get(5).getsCount() %>},
						{x: new Date(<%= year %>, 6), y: <%= smsList.get(6).getsCount() %>},
						{x: new Date(<%= year %>, 7), y: <%= smsList.get(7).getsCount() %>},
						{x: new Date(<%= year %>, 8), y: <%= smsList.get(8).getsCount() %>},
						{x: new Date(<%= year %>, 9), y: <%= smsList.get(9).getsCount() %>},
						{x: new Date(<%= year %>, 10), y: <%= smsList.get(10).getsCount() %>},
						{x: new Date(<%= year %>, 11), y: <%= smsList.get(11).getsCount() %>}
					
					]
				}]
			});
			chart.render();
			
			
	
		
	});
	
	

	
	function dayDetail(value){
		
		 $title = $("#myLargeModalLabel");
		  $title.html('');
		  $body = $("#dayDetailBody");
		  $body.html(''); 
		  
		  var fullday = $(value).parent().parent().children().eq(0).text();
		  var yearEarning1 = $(value).parent().parent().children().eq(1).text();
		  var yearEarning = removeComma(yearEarning1);
		 
		  var dayArray = fullday.split("-");
		  var year = dayArray[0];
		  var month = dayArray[1];
		 
		  
		  total = $(value).parent().parent().children().eq(3).text();
		  card = 0;
		  cash = 0;
		  sum = 0; 
		  index = 0;
		  
		  $title.text(year + "년 " + month + "월의 상세매출");
		  
		
			<% for(SiteDaySales sd : sdsList){ %>
		  		
		  	if( "<%= sd.getsDay().substring(0,7) %>" == fullday){
		  		
		  		$tr = $("<tr>");
		  		$td1 = $("<td>").text("<%= sd.getsDay() %>");
		  		$td2 = $("<td>").text("<%= formatter.format(sd.getsCost()) %>");
		  		$td3 = $("<td>").text("<%= formatter.format(Math.round(sd.getsCost()*0.15)) %>");
		  		$td5 = $("<td>").text("<%= sd.getsCount() %>");
		  			  		
		  
		  		$tr.append($td1);
		  		$tr.append($td2);
		  		$tr.append($td3);
		  		$tr.append($td5);
		  			  		
		  		$body.append($tr);	  
		  		
		  		index++;
		  	}
			  
		 <% } %> 
		 
		 
		  <% for(CampSales cs : csList){ %>
	  		
		  	if("<%= cs.getsPayDate().substring(0,7) %>" == fullday){
				
		  		sum += <%= cs.getsCost() %>
		  		
		  		switch("<%= cs.getsPayType() %>"){
		  		
		  		case "현금" : cash++; break;
		  		case "카드" : card++; break;
		  			  		
		  		}	
		  			  		
		  	}
			  
		<% } %> 
		 
	
		 var chart = new CanvasJS.Chart("chartContainer1", {
				animationEnabled: true,
				title: {
					text: "결제타입비율"
				},
				data: [{
					type: "pie",
					startAngle: 240,
					yValueFormatString: "##0.00\"%\"",
					indexLabel: "{label} {y}",
					dataPoints: [
						{y: (card/total) * 100, label: "카드 : " + card + "건"},
						{y: (cash/total) * 100, label: "현금 : " + cash + "건"}	
							
					]
				}]
			});
			chart.render();
			
			
			var average = Math.round(sum/total);
			var eargning = Math.round(average * 0.15);
			
			var comAver = comma(average);
			var earAver = comma(eargning);
		
			var MonthEarning = Math.round(yearEarning/index); // 월평균 매출액, 금액표시 x 
			var finalMonthEarn = comma(MonthEarning); // 월평균 매출액, 금액표시 o
			
			var MonthProfit = Math.round(MonthEarning * 0.85); // 월평균 순이익, 금액표시 x
			var finalMonthProfit = comma(MonthProfit); // 월평균 순이익, 금액표시 o
			
			var Monthcommit = Math.round(MonthEarning * 0.15); // 월평균 수수료, 금액표시 x
			var finalMonthcommit = comma(Monthcommit);
			
			$("#earning").text(finalMonthcommit);
			$("#averageview").text("일 평균매출액 : " + finalMonthEarn);
			
			$("#MonthEa").text((total/index).toFixed(2) + "건");
			$("#MonthAv").text("총 이용건수 : " + total + "건");  
	}
	
	function comma(num){
	    var len, point, str; 
	       
	    num = num + ""; 
	    point = num.length % 3 ;
	    len = num.length; 
	   
	    str = num.substring(0, point); 
	    while (point < len) { 
	        if (str != "") str += ","; 
	        str += num.substring(point, point + 3); 
	        point += 3; 
	    } 
	     
	    return str;
	 
	}
 
 function removeComma(str){

		n = parseInt(str.replace(/,/g,""));

		return n;

}
	
	
	
	
	
	</script>
	
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath()%>/resources/assets/js/jquery-2.1.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/metisMenu.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/jquery.slimscroll.min.js"></script>

	<!--Morris Chart-->
	<script src="<%=request.getContextPath()%>/resources/assets/plugins/morris/morris.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/plugins/raphael/raphael-min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/pages/jquery.morris.init.js"></script>

    <!-- Flot chart -->
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.time.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.tooltip.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.resize.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.pie.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.selection.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.stack.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.orderBars.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/flot-chart/jquery.flot.crosshair.js"></script>
    <script src="<%=request.getContextPath()%>/resources/assets/pages/jquery.flot.init.js"></script>

		<!-- Datatable js -->
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.bootstrap.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.buttons.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jszip.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/pdfmake.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/vfs_fonts.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.html5.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.print.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.keyTable.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.responsive.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/responsive.bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.scroller.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.colVis.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.fixedColumns.min.js"></script>

		<!-- init -->
        <script src="<%= request.getContextPath() %>/resources/assets/pages/jquery.datatables.init.js"></script>
        
      
  	<!-- form advanced init js -->
        <script src="<%=request.getContextPath()%>/resources/assets/pages/jquery.form-advanced.init.js"></script>


    <!-- KNOB JS -->
    <!--[if IE]>
    <script type="text/javascript" src="assets/plugins/jquery-knob/excanvas.js"></script>
    <![endif]-->
    <script src="<%=request.getContextPath()%>/resources/assets/plugins/jquery-knob/jquery.knob.js"></script>

	<!-- App Js -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.app.js"></script>

	<script type="text/javascript">
            $('[data-plugin="knob"]').each(function(idx, obj) {
                $(this).knob();
             });
        </script>

	
</body>
</html>