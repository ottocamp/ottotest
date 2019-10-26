<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

<p></p>



	<button onclick="dd();">확인</button>



	
	<script>

		    var ip = "";
   		 	var hostname = "";
   			var city = "";
   			var region = "";
    		var country = "";
    		var loc = "";
    		var org = "";




	    $.getJSON("http://ipinfo.io", function(data) {
        ip = data.ip // 접속자 ip
        hostname = data.hostname // 접속자 hostname
        city = data.city // 접속자 도시
        region = data.region // 접속자 지역
        country = data.country // 접속자 국가
        loc = data.loc // 접속 위도, 경도
        org = data.org // ISP (인터넷 서비스 제공사업자)


	});
	
	function dd(){
			alert(ip);
		}



	
	
	
	
	</script>


</body>
</html>