<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<title>예약 화면</title>
	<!-- jqury cdn -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
	<!-- bootstrap -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<style type="text/css">
		#reDate {
			width: 100px;
		}
	</style>
</head>
<body>
	<!-- menubar -->


	<!-- main container start-->
	<div id="form-container" class="container">
		<form action="" method="post">
		
		<!-- block-1 -->
		<div id="reInfo">
		캠핑장 정보
			<div id="campMap">1</div>
		</div>
		<!-- block-1 end -->
		
		<!-- block-2 -->
		<div id="reCampInsert" class="form-horizontal">
		캠핑장 예약폼
			<div id="campInsertReservation">
				<select id="reDate" class=" col-sm-1 form-control" >
				<option>1</option>
				<option>2</option>
				<option>13</option>
				<option>1</option>
				<option>1</option>
				
				</select>
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
			<div id="submitForm">4</div>
		</div>
		<!-- block-4 end -->
	
		</form>

	</div>
	<!-- main container end-->

</body>
</html>