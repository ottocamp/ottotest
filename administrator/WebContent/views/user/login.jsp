<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = (String)request.getAttribute("msg");
%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<script>
	var msg = "<%= msg %>";
	
	$(function(){
		if(msg != "null"){
			alert(msg);
		}
		if(msg=="가입성공"){
			window.close();
		}
	});
</script>
		<!-- jqury cdn -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script language="JavaScript" src="http://www.geoplugin.net/javascript.gp" type="text/javascript"></script>
		
        <meta charset="utf-8" />
        <title>SimpleAdmin - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="<%= request.getContextPath() %>/resources/login/assets/images/favicon.ico">

        <!-- Bootstrap core CSS -->
        <link href="<%= request.getContextPath() %>/resources/login/assets/css/bootstrap.min.css?after" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="<%= request.getContextPath() %>/resources/login/assets/css/metisMenu.min.css?after" rel="stylesheet">
        <!-- Icons CSS -->
        <link href="<%= request.getContextPath() %>/resources/login/assets/css/icons.css?after" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<%= request.getContextPath() %>/resources/login/assets/css/style.css?after" rel="stylesheet">

		<style>
			body{
					background: url('<%= request.getContextPath() %>/resources/user/images/loginback.jpg') no-repeat;
					background-size : cover;
			
			}
		
		</style>


    </head>


    <body>

        <!-- HOME -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">

                        <div class="wrapper-page">

                            <div class="m-t-40 card-box">
                                <div class="text-center">
                                    <h2 class="text-uppercase m-t-0 m-b-30">
                                        <a href="<%= request.getContextPath() %>" class="text-success">
                                            <span><img src="<%= request.getContextPath() %>/resources/login/assets/images/logo_dark.png" alt="" height="70" width="150"></span>
                                        </a>
                                    </h2>
                                    <!--<h4 class="text-uppercase font-bold m-b-0">Sign In</h4>-->
                                </div>
                                <div class="account-content">
                                    <form class="form-horizontal" action="<%= request.getContextPath() %>/login.user" method="post">

                                        <div class="form-group m-b-20">
                                            <div class="col-xs-12">
                                                <label for="idi" style="color: white;">아이디</label>
                                                <input class="form-control" name="userId" type="text" id="idi" required="" placeholder="">
                                            </div>
                                        </div>

                                        <div class="form-group m-b-20">
                                            <div class="col-xs-12">
                                                <label for="password" style="color: white;">비밀번호</label>
                                                <input class="form-control" name="userPwd" type="password" required="" id="password" placeholder="">
                                            </div>
                                        </div>

                                        <div class="form-group m-b-30">
                                            <div class="col-xs-12">
                                                <div class="checkbox checkbox-primary">
                                                    <input id="checkbox5" type="checkbox">
                                                    <label for="checkbox5">
                                                        Remember me
                                                    </label>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="form-group account-btn text-center m-t-10">
                                            <div class="col-xs-12">
                                                <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
                                            </div>
                                        </div>
											<input type="hidden" name="ip">
											<input type="hidden" name="country">
											
                                    </form>
                                    
                                    
                                    <script>
                                    	var country = geoplugin_countryName();
                                    	var ip = geoplugin_request(); 
                                    	
                                    	$(function(){
                                    		$("input[name=ip]").val(ip);
                                    		$("input[name=country]").val(country);
                                    		
                                    	});
                                    
                                    
                                    
                                    
                                    </script>
                                    
                                    
                                    
                                    
                                    
                                    
                                    

                                    <div class="clearfix"></div>

                                </div>
                            </div>
                            <!-- end card-box-->


                            <div class="row m-t-50">
                                <div class="col-sm-12 text-center">
                                    <a href="<%= request.getContextPath() %>/views/user/join.	jsp" class="text-dark m-l-5">회원가입</a></p>
                                </div>
                            </div>

                        </div>
                        <!-- end wrapper -->

                    </div>
                </div>
            </div>
        </section>
        <!-- END HOME -->



        <!-- js placed at the end of the document so the pages load faster -->
        <script src="<%= request.getContextPath() %>/resources/login/assets/js/jquery-2.1.4.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/login/assets/js/bootstrap.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/login/assets/js/metisMenu.min.js?after"></script>
        <script src="<%= request.getContextPath() %>/resources/login/assets/js/jquery.slimscroll.min.js?after"></script>

        <!-- App Js -->
        <script src="<%= request.getContextPath() %>/resources/login/assets/js/jquery.app.js?after"></script>

    </body>
</html>