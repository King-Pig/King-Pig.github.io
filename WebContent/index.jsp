<%@ page language="java" contentType="text/html; charset=utf-8"     pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<script src="js/jquery-1.11.1.min.js"></script>
</head>
<body>
<button type="button" class="btn btn-success  btn-lg" onclick="list()" >     list        </button>
<button type="button" class="btn btn-success  btn-lg" onclick="info()" >  info    </button>
<button type="button" class="btn btn-success  btn-lg" onclick="inster()" >   inster   </button>
<div id="show"> </div>
</body>

<script>
 		 function list(){
 			$.post("./StationInfo",{'method':'querylist','page':'1','t_name':'昆明'},function(result){
 			    $("#show").html(result);
 			  });
		 }
 
 		 
 		 function info(){
  			$.post("./StationInfo",{'method':'queryinfo','t_id':'2'},function(result){
  			    $("#show").html(result);
  			  });
 		 }
		 
 		 function inster(){
   			$.post("./StationInfo",{'method':'insert'},function(result){
   			    $("#show").html(result);
   			  });
  		 }
 		 
</script> 


</html>