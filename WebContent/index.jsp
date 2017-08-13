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
<button type="button" class="btn btn-success  btn-lg" onclick="update()" >   update   </button>
<div id="show"> </div>
</body>

<script>
 		 function list(){
 			$.post("./StationInfo",{'method':'querylist','page':'1','t_city':'昆明'},function(result){
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
 		 
 		 function update(){
    			$.post("./StationInfo",{'method':'update','t_id':'6','t_cg_u_id':'1','t_status':'1','t_new_sign':'1','t_name':'昆明xxxx台站','t_city':'昆明','t_longitude':'24.8859360126','t_latitude':'102.8396611228','t_accuracy':'10'},function(result){
    			    $("#show").html(result);
    			  });
   		 } 
</script> 


</html>