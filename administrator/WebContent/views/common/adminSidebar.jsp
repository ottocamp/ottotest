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
						<!--- End User Detail box -->

						<!-- Left Menu Start -->
						<ul class="metisMenu nav" id="side-menu">
							<li><a href="<%=request.getContextPath()%>"><i
									class="ti-home"></i> 관리자 메인 </a></li>

									
							<li><a href="javascript: void(0);" aria-expanded="true"><i class="ti-menu-alt"></i> 예약관리 <span class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="<%=request.getContextPath()%>/reservationAvail.li">예약 취소하기</a></li>
									<li><a href="<%=request.getContextPath()%>/reservationDelete.li">예약 취소내역보기</a></li>
									<li><a href="<%=request.getContextPath()%>/reservation.li">전체 예약내역보기</a></li>

								</ul></li>
									

							<li><a href="javascript: void(0);" aria-expanded="true"><i
									class="ti-light-bulb"></i> 게시판 관리 <span class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="#">게시글 관리</a></li>
									<li><a href="#">댓글 관리</a></li>

								</ul></li>

							<li><a href="<%=request.getContextPath()%>/userGrade.li"><i
									class="ti-spray"></i> 회원등급관리 </a></li>

							<li><a href="javascript: void(0);" aria-expanded="true"><i
									class="ti-pencil-alt"></i> 공지사항 및 문의답변 <span class="fa arrow"></span></a>
								<ul class="nav-second-level nav collapse" aria-expanded="false">
									<li><a href="#">공지사항</a></li>
									<li><a href="#">문의답변</a></li>
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
									<li><a href="<%=request.getContextPath()%>/campList.cl">사업장 승인하기</a></li>
									<li><a href="<%=request.getContextPath()%>/campDetail.li">승인 사업장 보기</a></li>
								</ul></li>


						</ul>
					</div>
				</div>
				<!--Scrollbar wrapper-->
			</aside>
			<!--left navigation end-->
</body>
</html>