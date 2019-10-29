<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*, sales.model.vo.*, java.text.DecimalFormat"%>	
<%
 
	
%>	
<!DOCTYPE html>  
<html>
<head>
		<meta charset="UTF-8">
	
		<!-- jqury cdn -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<meta charset="utf-8" />
		<title>사업장별 매출 조회 페이지</title>
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta
			content="A fully featured admin theme which can be used to build CRM, CMS, etc."
			name="description" />
		<meta content="Coderthemes" name="author" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		
		<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/assets/images/favicon.ico">
		
		 <!--Morris Chart CSS -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/plugins/morris/morris.css">
		
		
        <!-- Plugins css-->
        <link href="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/assets/plugins/switchery/switchery.min.css">
        <link href="<%=request.getContextPath()%>/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="<%=request.getContextPath()%>/resources/assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath()%>/resources/assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        
        <!-- DataTables -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
 
        <!-- Summernote css -->
        <link href="<%=request.getContextPath()%>/resources/assets/plugins/summernote/summernote.css" rel="stylesheet" />
		
		<!-- Bootstrap core CSS -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/bootstrap.min.css" rel="stylesheet">
		<!-- MetisMenu CSS -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/metisMenu.min.css" rel="stylesheet">
		<!-- Icons CSS -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/icons.css" rel="stylesheet">
		<!-- Custom styles for this template -->
		<link href="<%=request.getContextPath()%>/resources/assets/css/style.css" rel="stylesheet">
	
		



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
									<li><a href="campList.cl">사업장 승인</a></li>
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
						<h4 class="m-t-0 header-title">사업장별 매출정보 메뉴</h4>
							<div class="btn-group">
                                        <button type="button" class="btn btn-default" onclick="daySales();">일별</button>
                                        <button type="button" class="btn btn-default" onclick="monthSales();">월별</button>
                                        <button type="button" class="btn btn-default" onclick="yearSales();">년별</button>
                                        &nbsp;&nbsp;시작 일자 : <input type="date" style="height: 34px;" id="startDay">
                                        &nbsp;&nbsp;종료 일자 : <input type="date" style="height: 34px;" id="endDay">                                       
                             </div>
                            &nbsp; <button type="button" class="btn btn-primary" onclick="searchSales();">검색</button>
						</div>
					</div> <br><br>
					<!--end row -->
					
			
					<!-- end row -->



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
	
	<script type="text/javascript">
	
	$(function(){	
		index = "";
	})	
	 function daySales(){	
		index = "일별";			
	} 	 
	 function monthSales(){		
		 index = "월별";				
	} 	 
	 function yearSales(){		 
		 index = "년별";				
	}  	 
	 function searchSales(){
		 
		if(index == ""){
			 
			 alert("일/월/년을 선택해주세요");
			 
			 return; 
		 }
		 
		 	var startDate = $( "#startDay" ).val(); //2017-12-10
	        var startDateArr = startDate.split('-');
	         
	        var endDate = $( "#endDay" ).val(); //2017-12-09
	        var endDateArr = endDate.split('-');
	                 
	        var startDateCompare = new Date(startDateArr[0], parseInt(startDateArr[1])-1, startDateArr[2]);
	        var endDateCompare = new Date(endDateArr[0], parseInt(endDateArr[1])-1, endDateArr[2]);
	        
	        if(startDate == ""){
	        	alert("시작날짜가 비어있습니다.");
	        	return;
	        }
	        if(endDate == ""){
	        	alert("종료날짜가 비어있습니다.");
	        	return;
	        }
	        
	         
	        if(startDateCompare.getTime() > endDateCompare.getTime()) {
	             
	            alert("시작날짜와 종료날짜를 확인해 주세요.");
	             
	            return;
	        }

	        
	        
		switch(index){
		
		case "일별" : location.href="<%=request.getContextPath()%>/salesDay.sd?day="+startDate+","+endDate; break;
		case "월별" : location.href="<%=request.getContextPath()%>/salesMonth.sm?day="+startDate+","+endDate; break;
		case "년별" : location.href="<%=request.getContextPath()%>/salesYear.sy?day="+startDate+","+endDate; break;
		
		}
		 
	 }
	 

	 
	 
	 document.getElementById('endDay').value = new Date().toISOString().substring(0, 10);
	 
	</script>
	
	<!-- js placed at the end of the document so the pages load faster -->
	<script src="<%=request.getContextPath()%>/resources/assets/js/jquery-2.1.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/metisMenu.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/assets/js/jquery.slimscroll.min.js"></script>

	 <script src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js"></script>
        <script src="<%=request.getContextPath()%>/resources/assets/plugins/select2/js/select2.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <script src="<%=request.getContextPath()%>/resources/assets/plugins/switchery/switchery.min.js"></script>
        <script type="text/javascript" src="<%=request.getContextPath()%>/resources/assets/plugins/parsleyjs/parsley.min.js"></script>

        <script src="<%=request.getContextPath()%>/resources/assets/plugins/moment/moment.js"></script>
     	<script src="<%=request.getContextPath()%>/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
     	<script src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
     	<script src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
     	<script src="<%=request.getContextPath()%>/resources/assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
     	<script src="<%=request.getContextPath()%>/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
        <script src="<%=request.getContextPath()%>/resources/assets/plugins/summernote/summernote.min.js"></script>

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
        
    

	<!-- App Js -->
	<script
		src="<%=request.getContextPath()%>/resources/assets/js/jquery.app.js"></script>




</body>
</html>