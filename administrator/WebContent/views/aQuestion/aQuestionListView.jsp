<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, aQuestion.model.vo.*"%>    
<%
	ArrayList<aQuestion> qList = (ArrayList<aQuestion>)request.getAttribute("qList");
	String msg = (String)session.getAttribute("msg");	
	
	for(aQuestion aq : qList){
		
		switch(aq.getqTag()){
		
		case "1" : aq.setqTag("결제"); break;	
		case "2" : aq.setqTag("예약"); break;
		case "3" : aq.setqTag("설비"); break;
		case "4" : aq.setqTag("기타"); break;
		
		}
	
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/assets/images/favicon.ico">
        
        <!-- DataTables -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/jquery.dataTables.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/buttons.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/responsive.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/scroller.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.colVis.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/dataTables.bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/datatables/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css"/>
        

        <!-- Bootstrap core CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/style.css" rel="stylesheet">
        
        <!-- Sweet Alert -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/sweet-alert2/sweetalert2.min.css" rel="stylesheet" type="text/css">
		
        
        <style type="text/css">
		#detail_box{
			display:none;
		}
		
		#sa-success{
			display:none;
		}
		
	
		</style>
		
		<script>
		var msg = "<%= msg %>";
		$(function(){
		if(msg != "null"){
				
			$("#sa-success").click(); 
			<% session.removeAttribute("msg"); %>
		}
		});
		
		</script>


</head>
<body>

<div id="page-wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="">
                        <a href="index.html" class="logo">
                            <img src="<%= request.getContextPath() %>/resources/assets/images/logo.png" alt="logo" class="logo-lg">
                            <img src="<%= request.getContextPath() %>/resources/assets/images/logo_sm.png" alt="logo" class="logo-sm hidden">
                        </a>
                    </div>
                </div>

                <!-- Top navbar -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <div class="">

                            <!-- Mobile menu button -->
                            <div class="pull-left">
                                <button type="button" class="button-menu-mobile visible-xs visible-sm">
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
                            <ul class="nav navbar-nav navbar-right top-navbar-items-right pull-right">
                                <li class="hidden-xs">
                                    <form role="search" class="navbar-left app-search pull-left">
                                         <input type="text" placeholder="Search..." class="form-control">
                                         <a href=""><i class="fa fa-search"></i></a>
                                    </form>
                                </li>
                                <li class="dropdown top-menu-item-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle menu-right-item" data-toggle="dropdown" aria-expanded="true">
                                        <i class="mdi mdi-bell"></i> <span class="label label-danger">3</span>
                                    </a>
                                    <ul class="dropdown-menu p-0 dropdown-menu-lg">
                                        <!--<li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>-->
                                        <li class="list-group notification-list" style="height: 267px;">
                                           <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 267px;"><div class="slimscroll" style="overflow: hidden; width: auto; height: 267px;">
                                               <!-- list item-->
                                               <a href="javascript:void(0);" class="list-group-item">
                                                  <div class="media">
                                                     <div class="media-left p-r-10">
                                                        <em class="fa fa-diamond bg-primary"></em>
                                                     </div>
                                                     <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
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
                                                            <small>There are <span class="text-primary font-600">2</span> new updates available</small>
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
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
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
                                           </div><div class="slimScrollBar" style="background: rgb(158, 165, 171); width: 5px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div><div class="slimScrollRail" style="width: 5px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div></div>
                                        </li>
                                        <!--<li>-->
                                            <!--<a href="javascript:void(0);" class="list-group-item text-right">-->
                                                <!--<small class="font-600">See all notifications</small>-->
                                            <!--</a>-->
                                        <!--</li>-->
                                    </ul>
                                </li>

                                <li class="dropdown top-menu-item-xs">
                                    <a href="" class="dropdown-toggle menu-right-item profile" data-toggle="dropdown" aria-expanded="true"><img src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-user m-r-10"></i> Profile</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-settings m-r-10"></i> Settings</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-10"></i> Lock screen</a></li>
                                        <li class="divider"></li>
                                        <li><a href="javascript:void(0)"><i class="ti-power-off m-r-10"></i> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div> <!-- end container -->
                </div> <!-- end navbar -->
            </div>
            <!-- Top Bar End -->


            <!-- Page content start -->
            <div class="page-contentbar">

                <!--left navigation start-->
                <aside class="sidebar-navigation">
                    <div class="scrollbar-wrapper">
                        <div>
                            <button type="button" class="button-menu-mobile btn-mobile-view visible-xs visible-sm">
                                <i class="mdi mdi-close"></i>
                            </button>
                            <!-- User Detail box -->
                            <div class="user-details">
                                <div class="pull-left">
                                    <img src="<%= request.getContextPath() %>/resources/assets/images/users/avatar-1.jpg" alt="" class="thumb-md img-circle">
                                </div>
                                <div class="user-info">
                                    <a href="#">Stanley Jones</a>
                                    <p class="text-muted m-0">Administrator</p>
                                </div>
                            </div>
                            <!--- End User Detail box -->

                            <!-- Left Menu Start -->
                            <ul class="metisMenu nav" id="side-menu">
                                <li><a href="<%= request.getContextPath() %>"><i class="ti-home"></i> 관리자 메인 </a></li>

                                <li><a href="<%= request.getContextPath() %>/reservation.li"><span class="label label-custom pull-right">11</span> <i class="ti-paint-bucket"></i> 예약관리 </a></li>

                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-light-bulb"></i> 게시판 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav collapse" aria-expanded="false">
                                        <li><a href="components-range-slider.html">게시글 관리</a></li>
                                        <li><a href="components-alerts.html">댓글 관리</a></li>
                            
                                    </ul>
                                </li>

                                <li><a href="<%= request.getContextPath() %>/userGrade.li"><i class="ti-spray"></i> 회원등급관리 </a></li>

                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-pencil-alt"></i> 공지사항 및 문의답변 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav collapse" aria-expanded="false">
                                        <li><a href="forms-general.html">공지사항</a></li>
                                        <li><a href="<%= request.getContextPath() %>/Question.li">문의답변</a></li>
                                    </ul>
                                </li>

                                <li class="">
                                    <a href="javascript: void(0);" aria-expanded="false"><i class="ti-menu-alt"></i> 매출내역확인 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav collapse" aria-expanded="false" style="height: 0px;">
                                        <li><a href="<%= request.getContextPath() %>/views/sales/salesTotalView.jsp">전체 매출내역</a></li>
                                        <li><a href="<%=request.getContextPath()%>/salesList.sl">사업장별 매출내역</a></li>
                                    </ul>
                                </li>

                           
                                <li class="">
                                    <a href="javascript: void(0);" aria-expanded="false"><i class="ti-files"></i> 사업장 관리 <span class="fa arrow"></span></a>
                                    <ul class="nav-second-level nav collapse" aria-expanded="false" style="height: 0px;">
                                        <li><a href="campList.cl">사업장 승인</a></li>
                                        <li><a href="pages-register.html">사업장 메뉴2</a></li>
                                        <li><a href="pages-forget-password.html">사업장 메뉴3</a></li>          
                                    </ul>
                                </li>

         
                            </ul>
                        </div>
                    </div><!--Scrollbar wrapper-->
                </aside>
                <!--left navigation end-->

                <!-- START PAGE CONTENT -->
                <div id="page-right-content">

                    <div class="container">
                        <div class="row">
							<div class="col-sm-12">
								<h4 class="m-t-0 header-title">관리자 문의내역 관리 메뉴</h4>

                                <div class="table-responsive m-b-20">
                                    <h5><b>관리자에게 한 문의 내역</b></h5>
                                    <p class="text-muted font-13 m-b-30">
                                        문의내역 중에서 관리자에게 온 문의내용을 확인할 수 있는 테이블 입니다.
                 <br>상세 및 답변 버튼을 누르면 문의 상세 내용과 답변을 할 수 있습니다. 
                                    </p>

                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                        <tr>
                                            <th>문의번호</th>
                                            <th>문의제목</th>
                                            <th>문의날짜</th>
                                            <th>문의 카테고리</th>
                                            <th>답변여부</th>
                                            <th>문의회원번호</th>
                                            <th>상세보기</th>
                                        </tr>
                                        </thead>


                                        <tbody>
                                        <% for(aQuestion aq : qList){ %>
											<tr id="usergrade">
												<td><%= aq.getqCode() %></td>
												<td><%= aq.getqTitle() %></td>
												<td><%= aq.getqDate() %></td>
												<td><%= aq.getqTag() %></td>
												<td><%= aq.getqYn() %></td>
												<td><%= aq.getqWriter() %></td>
												<td>
												<% if(aq.getqYn().equals("Y")){ %>
												<button class="btn btn-dark btn-xs" type="button" onclick="update(this);">상세보기</button>
												<% }else{ %>
												<button class="btn btn-primary btn-xs" type="button" onclick="update(this);">답변하기</button>
												<%} %>
												</td>
											</tr>
										<%} %>
                                        </tbody>
                                    </table>
                                </div>
								
								
							</div>
						</div>
                        <!--end row -->
                        
                        <div class="row" id="detail_box">
                            <div class="col-sm-12"> 
                                <h4 class="m-t-0 header-title">문의 상세 내역</h4>
                                <table id="datatable" class="table table-bordered m-0">
                                <thead>
                                  <tr>
                                       <th width="100px"></th>
                                       <th>내용</th>
                                    
                                  </tr>
                                  </thead>
                                
                                  <tbody id="detail">
                                  
                         	
                                  </tbody>
                                
                                </table>	
                                <div id="buttonArea"></div>
      							<button class="btn btn-default waves-effect waves-light btn-sm" id="sa-success" >Click me</button>
                            </div>
                        </div>
                        
                        


                        <div class="row">
                            <div class="col-lg-6">
                                
                            </div> <!-- end col -->

                            <div class="col-lg-6">
                                
                            </div> <!-- end col -->
                        </div> <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                
                            </div>
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
                    </div> <!-- end footer -->

                </div>
                <!-- End #page-right-content -->

            </div>
            <!-- end .page-contentbar -->
        </div>
        
        <script type="text/javascript">
        
		function update(value){
			
			$("#detail_box").css("display","block");
			
			var qNo = $(value).parent().parent().children().eq(0).text();			
			
			$tbody = $("#detail");
			$tbody.html('');
			$("#buttonArea").html('');
			
			$tr1 = $("<tr>");
			$tr2 = $("<tr>");
			$button = null;
			
			
				
			<% for(aQuestion aq : qList) {%>
			
				if(qNo + "" == (<%= aq.getqCode() %> +"")){
					
					var $li1 = $("<td>").text("<%= aq.getqContent() %>");
					var $qCode = $("<input type='hidden'>").val("<%= aq.getqCode() %>")
					
					
					
					if("<%= aq.getqYn() %>" == "N"){
						
						var $li2 = $("<textarea style='width:100%' id='comment'>").text("답변할 내용을 작성하세요");
						$button = $('<button class="btn btn-primary btn-xs" type="button" onclick="Answer(this);">').text("답변하기");
						
					}else{
						
						var $li2 = $("<td>").text("<%= aq.getqComment() %>");
						
											
					}
					
				}
			
			<%} %> 
				
			$td1 = $("<td>").text("문의");
			$td2 = $("<td>").text("답변");
			
			$tr1.append($td1);
			$tr1.append($li1);
			$tbody.append($tr1);
			
			$tr2.append($td2);
			$tr2.append($li2);
			$tbody.append($tr2);
			$("#buttonArea").append($button);
			$("#buttonArea").append($qCode);
			
			
		}
        
		function Answer(value){
			
			var qCode = $(value).parent().children().eq(1).val();
			var comment = $("#comment").val();
			var index = qCode + "," + comment;
							
			 location.href = "<%= request.getContextPath() %>/answer.qa?qCode="+index;
			
		}
		
		
        </script>
        
        
        
        
        


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js"></script>

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

		<!-- Sweet-Alert  -->
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/sweet-alert2/sweetalert2.min.js"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/pages/jquery.sweet-alert.init.js"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js"></script>

		
		

</body>
</html>