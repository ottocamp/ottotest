<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
									class="ti-home"></i> 사업자 메인 </a></li>

							<li><a href="<%=request.getContextPath()%>/reservation.li"><span
									class="label label-custom pull-right">11</span> <i
									class="ti-paint-bucket"></i> 예약내역 </a></li>

							<li class=""><a href="javascript: void(0);"
								aria-expanded="false"><i class="ti-menu-alt"></i> 매출내역확인 <span
									class="fa arrow"></span></a> <ul class="nav-second-level nav collapse" aria-expanded="false" style="height: 0px;">
                                        <li><a href="tables-basic.html">전체 매출내역</a></li>
                                        <li><a href="tables-advanced.html">사업장별 매출내역</a></li>
                                    </ul></li>

							<li><a href="javascript: void(0);" aria-expanded="true"><i
									class="ti-light-bulb"></i> 정보등록/수정 <span class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="<%= request.getContextPath() %>/views/camp/campInsertView.jsp">정보 등록</a></li>
									<li><a href="components-alerts.html">정보 수정</a></li>

								</ul></li>

							<li><a href="javascript: void(0);" aria-expanded="true"><i
									class="ti-pencil-alt"></i> 문의답변 <span class="fa arrow"></span></a>
								<<ul class="nav-second-level nav collapse" aria-expanded="false">
                                        <li><a href="forms-general.html">공지사항</a></li>
                                        <li><a href="forms-advanced.html">문의답변</a></li>
                                    </ul></li>

						</ul>
					</div>
				</div>
				<!--Scrollbar wrapper-->
			</aside>
			<!--left navigation end-->
</body>
</html>