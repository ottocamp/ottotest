<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<title>예약 화면</title>
<!-- jqury cdn -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


</head>
<body>
	<!-- menubar -->


	<!-- main container start-->
	<div id="form-container" class="container">
		

			<!-- block-1 -->
			<div id="reInfo">캠핑장 정보</div>
			<!-- block-1 end -->
			
		<form action="" method="post">
			<!-- block-2 -->
			<div id="reCampInsert" class="form-horizontal">
				캠핑장 사이트 전도
				<div id="campMap">1</div>
				캠핑장 예약폼
				<div id="campChoiceReservation">
					<table class="table" border="soild">
						<tr>
							<td>파쇄석<input type="checkbox"></td>
							<td>데크<input type="checkbox"></td>
							<td>카라반<input type="checkbox"></td>
							<td>캠핑카<input type="checkbox"></td>
							<td>글램핑<input type="checkbox"></td>
							<td>펜션<input type="checkbox"></td>
						</tr>
					</table>
				</div>

				<br>
				
				<div>
				<input type="date">
				</div>
				<div id="campInsertReservation">
					<table class="table" border="soild">
						<tr>
							<th>사이트명</th>
							<th>이용인원(기준/최대)</th>
							<th>이용금액</th>
							<th>추가인원</th>
							<th>예약기간</th>
							<th>예약인원</th>
							<th>합계</th>
							<th>선택</th>
						</tr>
						<tr>
							<td><select><option>1</option></select></td>
							<td></td>
							<td></td>
							<td></td>
							<td><select><option>1</option></select></td>
							<td><select><option>1</option></select></td>
							<td></td>
							<td><input type="checkbox"></td>
						</tr>
					</table>
				</div>

				<br>

				<div id="campCarReservation">
					<table class="table" border="soild">
						<tr>
							<th>0000</th>
							<th>주차비</th>
							<th>기간</th>
							<th>차량수</th>
							<th>합계</th>
							<th>선택</th>
						</tr>
						<tr>
							<td>추가차량</td>
							<td></td>
							<td><select><option>1</option></select></td>
							<td><select><option>1</option></select></td>
							<td></td>
							<td><input type="checkbox"></td>
						</tr>
					</table>
				</div>

				<br>

				<div id="campEtcReservation">
					<table class="table" border="soild">
						<tr>
							<td>옵션1(땡겨옴)<input type="checkbox"></td>
							<td>옵션2(땡겨옴)<input type="checkbox"></td>
						</tr>
					</table>
					
					<table class="table" border="soild">
						<tr>
							<th>옵션이름</th>
							<th>가격</th>
							<th>기간</th>
							<th>소모수</th>
							<th>합계</th>
							<th>선택</th>
						</tr>
						<br>
						<tr>
							<td>추가차량</td>
							<td></td>
							<td><select><option>1</option></select></td>
							<td><select><option>1</option></select></td>
							<td></td>
							<td><input type="checkbox"></td>
						</tr>
					</table>
				</div>

				<br>

				<div id="ReservationTotalPayment">
					<table class="table" border="soild">
						<tr>
							<td>총 결제금액.</td>
							<td>(체크된 합계금액을 땡겨오는 역할)</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- block-2 end -->

			<!-- block-3 -->
			<div id="rePrecautions">
				캠핑장 주의사항
				<div id="campPrecautions">3</div>
			</div>
			<!-- block-3 end -->

			<!-- block-4 -->
			<div id="rePrivateInsert">
				개인정보 제출
				<div id="submitForm">
				<table class="table" border="soild">
					<tr>
						<th>이름</th>
						<td><input type="text" name="name"></td>
						<th>비밀번호</th>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<th>핸드폰번호</th>	
						<td><input type="text" name="phone"></td>
						<th>차량번호</th>
						<td><input type="text" name="licenceNumber"></td>
					</tr>
					<tr>
						<th colspan="1">메모/메세지</th>
						<td colspan="3"><textarea name="message" cols=55 rows=5 style="resize:none"></textarea></td>
					</tr>
				</table>
				</div>
				
				<br>
				
				<div id="CCPI">
				<!-- Consent to Collection of Personal Information -->
				<p>
				1. 개인정보의 수집·이용 목적: 원활한 예약 관리 및 예약자의 예약확인.<br>
				2. 수집하는 개인정보의 항목: 이름, 휴대폰번호, 차량번호<br>
				3. 개인정보의 보유·이용 기간: 해당 예약방문일 직후 삭제<br>
				4. 개인정보의 수집 및 이용에 대한 동의를 거부할 수 있으며, 이 경우 예약이 제한됩니다.<br>
				</p>
				개인정보 수집 사용 동의 &nbsp <input type="checkbox" value="ccpi">
				</div>
				
				<br>
				
				<div id="payment">
				무통장입금 : <input type="radio" name="payment" value="bankDeposit">
				현지 지불 :  <input type="radio" name="payment" value="localPayment">
				카드 : <input type="radio" name="payment" value="creditCard">
				</div>
				
				
			</div>
			<!-- block-4 end -->

		<input type="submit" value="예약">
		</form>

	</div>
	<!-- main container end-->

</body>
</html>