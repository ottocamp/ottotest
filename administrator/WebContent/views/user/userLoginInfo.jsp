<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 메인 메뉴</title>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/assets/images/favicon.ico">

		 <!-- Plugins css-->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-tagsinput/css/bootstrap-tagsinput.css" rel="stylesheet" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/assets/plugins/switchery/switchery.min.css">
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
        <!-- Summernote css -->
        <link href="<%= request.getContextPath() %>/resources/assets/plugins/summernote/summernote.css" rel="stylesheet" />

        <!-- Bootstrap core CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/metisMenu.min.css" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/icons.css" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<%= request.getContextPath() %>/resources/assets/css/style.css" rel="stylesheet">


</head>
<body>

<div id="page-wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="">
                        <a href="<%= request.getContextPath() %>" class="logo">
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
                                <li><a href="<%= request.getContextPath() %>/views/user/userMain.jsp"><i class="ti-home"></i> 회원 메인 메뉴 </a></li>

                                <li><a href="<%= request.getContextPath() %>/views/user/userUpdate.jsp"> <i class="ti-paint-bucket"></i> 개인 정보 수정 </a></li>

                                <li>
                                    <a href="<%= request.getContextPath() %>/views/user/userUsed.jsp"><i class="ti-paint-bucket"></i> 이용내역</span></a>

                                </li>
                                
                                <li><a href="<%= request.getContextPath() %>/views/user/userFavorite.jsp"><i class="ti-spray"></i> 나의 관심 캠핑장</a></li>

                                <li><a href="<%= request.getContextPath() %>/views/user/userLoginInfo.jsp"><i class="ti-spray"></i> 로그인 관리 </a></li>
                                
                               

                                <li>
                                    <a href="javascript: void(0);" aria-expanded="true"><i class="ti-pencil-alt"></i> 리뷰 및 메모</span></a>
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
                            <div class="col-md-12">
                                <div class="p-0 text-center">
                                    

                                </div> <!-- end card-box -->

                            </div> <!-- end col -->
                        </div> <!-- end row -->

                        <div class="m-t-30">
                            
                            <div class="tab-content">
                                <div class="tab-pane active" id="home-b1">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">현재 로그인 정보</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <div class="m-b-20">
                                                        <strong>Full Name</strong>
                                                        <br>
                                                        <p class="text-muted">Johnathan Deo</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>Mobile</strong>
                                                        <br>
                                                        <p class="text-muted">(123) 123 1234</p>
                                                    </div>
                                                    <div class="m-b-20">
                                                        <strong>Email</strong>
                                                        <br>
                                                        <p class="text-muted">johnath@domain.com</p>
                                                    </div>
                                                    <div class="about-info-p m-b-0">
                                                        <strong>Location</strong>
                                                        <br>
                                                        <p class="text-muted">USA</p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                            <!-- Social -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">해외 로그인 차단 관리</h3>
                                                </div>
                                                <div class="panel-body">
												
												<input type="checkbox" id="ld1" data-plugin="switchery" data-color="#1bb99a" data-switchery="true" style="display: none;">	
												<p id="ld2"></p>
												
                                                </div>
                                            </div>
                                            <!-- Social -->
                                        </div>
                                        
                                        <script>
                                        	$(function(){
                                        		
                                        		$("#ld1").change(checkedChange);
                                        		
                                                function checkedChange(){
 
                                                    //선택한 요소의 값이 'checked' 일 경우
                                                    if($(this).prop("checked")){
                                                        $("#ld2").text("해외 로그인 설정이 완료 되었습니다.")
                                                    }else{
                                                    	$("#ld2").text("해외 로그인 차단이 ")
                                                    }

                                                }
                                        		
                                        		
                                        	});
                                        
                                        
                                        </script>


                                        <div class="col-md-8">
                                            <!-- Personal-Information -->
                                            <div class="panel panel-default panel-fill">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">로그인 기록</h3>
                                                </div>
                                                <div class="panel-body">
													<div class="col-sm-12">
                                <h4 class="m-t-0 header-title">Data Tables</h4>

                                <div class="table-responsive m-b-20">
                                    <h5><b>Default Example</b></h5>
                                    <p class="text-muted font-13 m-b-30">
                                        DataTables has most features enabled by default, so all you need to do to use it with
                                        your own tables is to call the construction function: <code>$().DataTable();</code>.
                                    </p>

                                    <div id="datatable_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer"><div class="row"><div class="col-sm-6"><div class="dataTables_length" id="datatable_length"><label>Show <select name="datatable_length" aria-controls="datatable" class="form-control input-sm"><option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select> entries</label></div></div><div class="col-sm-6"><div id="datatable_filter" class="dataTables_filter"><label>Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="datatable"></label></div></div></div><div class="row"><div class="col-sm-12"><table id="datatable" class="table table-striped table-bordered dataTable no-footer" role="grid" aria-describedby="datatable_info">
                                        <thead>
                                        <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Name: activate to sort column descending" aria-sort="ascending" style="width: 236px;">Name</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 387px;">Position</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 171px;">Office</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Age: activate to sort column ascending" style="width: 91px;">Age</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Start date: activate to sort column ascending" style="width: 176px;">Start date</th><th class="sorting" tabindex="0" aria-controls="datatable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 130px;">Salary</th></tr>
                                        </thead>


                                        <tbody>
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        

                                        <tr role="row" class="odd">
                                            <td class="sorting_1">Airi Satou</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                            <td>33</td>
                                            <td>2008/11/28</td>
                                            <td>$162,700</td>
                                        </tr><tr role="row" class="even">
                                            <td class="sorting_1">Angelica Ramos</td>
                                            <td>Chief Executive Officer (CEO)</td>
                                            <td>London</td>
                                            <td>47</td>
                                            <td>2009/10/09</td>
                                            <td>$1,200,000</td>
                                        </tr><tr role="row" class="odd">
                                            <td class="sorting_1">Ashton Cox</td>
                                            <td>Junior Technical Author</td>
                                            <td>San Francisco</td>
                                            <td>66</td>
                                            <td>2009/01/12</td>
                                            <td>$86,000</td>
                                        </tr><tr role="row" class="even">
                                            <td class="sorting_1">Bradley Greer</td>
                                            <td>Software Engineer</td>
                                            <td>London</td>
                                            <td>41</td>
                                            <td>2012/10/13</td>
                                            <td>$132,000</td>
                                        </tr><tr role="row" class="odd">
                                            <td class="sorting_1">Brenden Wagner</td>
                                            <td>Software Engineer</td>
                                            <td>San Francisco</td>
                                            <td>28</td>
                                            <td>2011/06/07</td>
                                            <td>$206,850</td>
                                        </tr><tr role="row" class="even">
                                            <td class="sorting_1">Brielle Williamson</td>
                                            <td>Integration Specialist</td>
                                            <td>New York</td>
                                            <td>61</td>
                                            <td>2012/12/02</td>
                                            <td>$372,000</td>
                                        </tr><tr role="row" class="odd">
                                            <td class="sorting_1">Caesar Vance</td>
                                            <td>Pre-Sales Support</td>
                                            <td>New York</td>
                                            <td>21</td>
                                            <td>2011/12/12</td>
                                            <td>$106,450</td>
                                        </tr><tr role="row" class="even">
                                            <td class="sorting_1">Cedric Kelly</td>
                                            <td>Senior Javascript Developer</td>
                                            <td>Edinburgh</td>
                                            <td>22</td>
                                            <td>2012/03/29</td>
                                            <td>$433,060</td>
                                        </tr><tr role="row" class="odd">
                                            <td class="sorting_1">Charde Marshall</td>
                                            <td>Regional Director</td>
                                            <td>San Francisco</td>
                                            <td>36</td>
                                            <td>2008/10/16</td>
                                            <td>$470,600</td>
                                        </tr><tr role="row" class="even">
                                            <td class="sorting_1">Colleen Hurst</td>
                                            <td>Javascript Developer</td>
                                            <td>San Francisco</td>
                                            <td>39</td>
                                            <td>2009/09/15</td>
                                            <td>$205,500</td>
                                        </tr></tbody>
                                    </table></div></div><div class="row"><div class="col-sm-6"><div class="dataTables_info" id="datatable_info" role="status" aria-live="polite">Showing 1 to 10 of 30 entries</div></div><div class="col-sm-6"><div class="dataTables_paginate paging_simple_numbers" id="datatable_paginate"><ul class="pagination"><li class="paginate_button previous disabled" aria-controls="datatable" tabindex="0" id="datatable_previous"><a href="#">Previous</a></li><li class="paginate_button active" aria-controls="datatable" tabindex="0"><a href="#">1</a></li><li class="paginate_button " aria-controls="datatable" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="datatable" tabindex="0"><a href="#">3</a></li><li class="paginate_button next" aria-controls="datatable" tabindex="0" id="datatable_next"><a href="#">Next</a></li></ul></div></div></div></div>
                                </div>
                            </div>
                                                </div>
                                            </div>
                                            <!-- Personal-Information -->

                                        </div>

                                    </div>
                                </div>
                                <div class="tab-pane" id="profile-b1">
                                    <!-- Personal-Information -->
                                    <div class="panel panel-default panel-fill">
                                        <div class="panel-heading">
                                            <h3 class="panel-title">Edit Profile</h3>
                                        </div>
                                        <div class="panel-body">
                                            <form role="form">
                                                <div class="form-group">
                                                    <label for="FullName">Full Name</label>
                                                    <input type="text" value="John Doe" id="FullName" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="Email">Email</label>
                                                    <input type="email" value="first.last@example.com" id="Email" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="Username">Username</label>
                                                    <input type="text" value="john" id="Username" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="Password">Password</label>
                                                    <input type="password" placeholder="6 - 15 Characters" id="Password" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="RePassword">Re-Password</label>
                                                    <input type="password" placeholder="6 - 15 Characters" id="RePassword" class="form-control">
                                                </div>
                                                <div class="form-group">
                                                    <label for="AboutMe">About Me</label>
                                                    <textarea style="height: 125px" id="AboutMe" class="form-control">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.</textarea>
                                                </div>
                                                <button class="btn btn-primary waves-effect waves-light w-md" type="submit">Save</button>
                                            </form>

                                        </div>
                                    </div>
                                    <!-- Personal-Information -->
                                </div>
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


        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js?after"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js?after"></script>

		 <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery-2.1.4.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/bootstrap.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/metisMenu.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.slimscroll.min.js?after"></script>

        <script src="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-tagsinput/js/bootstrap-tagsinput.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/select2/js/select2.min.js?after" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js?after" type="text/javascript"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/switchery/switchery.min.js?after"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/resources/assets/plugins/parsleyjs/parsley.min.js?after"></script>

        <script src="<%= request.getContextPath() %>/resources/assets/plugins/moment/moment.js"></script>
     	<script src="<%= request.getContextPath() %>/resources/assets/plugins/timepicker/bootstrap-timepicker.js"></script>
     	<script src="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js?after"></script>
     	<script src="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js?after"></script>
     	<script src="<%= request.getContextPath() %>/resources/assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js?after"></script>
     	<script src="<%= request.getContextPath() %>/resources/assets/plugins/bootstrap-daterangepicker/daterangepicker.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/assets/plugins/summernote/summernote.min.js?after"></script>
        
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
        <script src="<%= request.getContextPath() %>/resources/assets/pages/jquery.form-advanced.init.js"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/assets/js/jquery.app.js"></script>

        <script type="text/javascript">
/*             $(document).ready(function() {
                $('.form-validation').parsley();
                $('.summernote').summernote({
                    height: 350,                 // set editor height
                    minHeight: null,             // set minimum height of editor
                    maxHeight: null,             // set maximum height of editor
                    focus: false                 // set focus to editable area after initializing summernote
                });
            }); */
        </script>
		

</body>
</html>	