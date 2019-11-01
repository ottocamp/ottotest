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
	<div class="container-fluid">
		




	<!-- block-1 -->
	<div id="reInfo" style="background: green">캠핑장 정보</div>
	<!-- block-1 end -->
			
			
			
	<!-- block-2 -->		
	<form action="" method="post">
	<div id="reCampInsert" class="border border-warning">
		<div id="campMap">캠핑장 사이트 전도</div>
		
		<hr>
			
		캠핑장 예약폼
		<div id="campChoiceReservation" class="">
			<div class="">
				<table class="table table-sm">
					<tr>
						<td>파쇄석(소)&nbsp;<input type="checkbox" id="st1Ck"></td>
						<td>파쇄석(대)&nbsp;<input type="checkbox"></td>
						<td>데크&nbsp;<input type="checkbox"></td>
						<td>카라반&nbsp;<input type="checkbox"></td>
						<td>캠핑카&nbsp;<input type="checkbox"></td>
						<td>글램핑&nbsp;<input type="checkbox"></td>
						<td>펜션&nbsp;<input type="checkbox"></td>
					</tr>
				</table>
			</div>
		</div>

<br>
				
		<div>
			<input type="date">
		</div>
			
		<div> <!-- 버튼 보관div -->	
			<p>
			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st1InsertReservation" aria-expanded="false" aria-controls="st1InsertReservation" style="display:none; id="st1Btn">파쇄석(소)</button>
  			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st2InsertReservation" aria-expanded="false" aria-controls="st2InsertReservation" style="display:none;">파쇄석(대)</button>
  			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st3InsertReservation" aria-expanded="false" aria-controls="st3InsertReservation" style="display:none;">데크</button>
  			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st4InsertReservation" aria-expanded="false" aria-controls="st4InsertReservation" style="display:none;">카라반</button>
  			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st5InsertReservation" aria-expanded="false" aria-controls="st5InsertReservation" style="display:none;">캠핑카</button>
  			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st6InsertReservation" aria-expanded="false" aria-controls="st6InsertReservation" style="display:none;">글램핑</button>
  			<button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#st7InsertReservation" aria-expanded="false" aria-controls="st7InsertReservation" style="display:none;">펜션</button>
  			</p>
  		</div> <!-- 버튼 보관div 끗 -->	
  			
  		<div class="collapse" id="st1InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-light">
          		<tr>
            		<th>파쇄석(소)</th><th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
          		  	<td></td>
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
  		</div>
  			
  		<div class="collapse" id="st2InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          		<tr>
            		<th>파쇄석(대)</th><th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
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
  		</div>
  			
  		<div class="collapse" id="st3InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          		<tr>
            		<th>데크</th><th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
          		  	<td></td>
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
  		</div>
  			
  		<div class="collapse" id="st4InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          		<tr>
            		<th>카라반</th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
          		  	<td></td>
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
  		</div>
  			
  		<div class="collapse" id="st5InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          		<tr>
            		<th>캠핑카</th><th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
          		  	<td></td>
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
  		</div>
  			
  		<div class="collapse" id="st6InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          		<tr>
            		<th>글램핑</th><th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
          		  	<td></td>
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
  		</div>
  		
  		<div class="collapse" id="st7InsertReservation">
    	<div class="card card-body">
        	<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          		<tr>
            		<th>펜션</th><th>이용인원(기준/최대)</th><th>이용금액</th><th>추가인원</th><th>예약기간</th><th>예약인원</th><th>합계</th><th>선택</th>
          		</tr>
          		</thead>
          		<tr>
          		  	<td></td>
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
  		</div>

				<br>
			
			<p><button class="btn btn-outline-secondary" type="button" data-toggle="collapse" data-target="#campCarReservation" aria-expanded="false" aria-controls="collapseExample">추가 차량</button></p>
			
  			<div class="collapse" id="campCarReservation">
    		<div class="card card-body">
        		<table class="table table-sm table-bordered">
          		<thead class="thead-dark">
          			<tr>
            			<th>0000</th><th>주차비</th> <th>기간</th><th>차량수</th><th>합계</th> <th>선택</th>
          			</tr>
          		</thead>
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
  		</div>
				

				<br>

				<div id="campEtcReservation">
					<table class="table table-sm table-bordered">
						<tr>
							<td>옵션1(땡겨옴)<input type="checkbox"></td>
							<td>옵션2(땡겨옴)<input type="checkbox"></td>
						</tr>
					</table>
					
					<table class="table table-sm table-bordered">
						<thead class="thead-dark">
						<tr>
							<th>옵션이름</th>
							<th>가격</th>
							<th>기간</th>
							<th>소모수</th>
							<th>합계</th>
							<th>선택</th>
						</tr>
						</thead>
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
					<table class="table table-sm table-bordered">
						<tr>
							<td>총 결제금액.</td>
							<td>(체크된 합계금액을 땡겨오는 역할)</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- block-2 end -->

			<!-- block-3 -->
			<div id="rePrecautions" style="background: pink">
				캠핑장 주의사항
				<div id="campPrecautions">3</div>
			</div>
			<!-- block-3 end -->

			<!-- block-4 -->
			<div id="rePrivateInsert" style="background: skyblue">
				개인정보 제출
				<div id="submitForm">
				<table class="table table-sm table-bordered">
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
	
	<script>
	/* $("#st1Ck").checked(function () {  
	    if($("#st1Btn").css("display") == "none"){   
	        $("#st1Btn").show();  
	    } else {  
	        $("#st1Btn").hide();  
	    }  
	});  
	 */
	$(document).ready(function(){
	    $("#st1Ck").change(function(){
	        if($("#st1Ck").is(":checked")){
	        	if($("#st1Btn").css("display") == "none") {
	        		$("#st1Btn").show();  	
	        	} else{
	        		$("#st1Btn").hide();
	        	}
	        }
	    });
	});

	</script>
	
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 	

</body>
</html>