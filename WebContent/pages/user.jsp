<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java"  import="com.spark.bsel.dao.*" %>
<!DOCTYPE html>
<%
Map<String,Object>  u  = (Map<String,Object>)request.getSession().getAttribute("user");

if(u == null){
	out.print("<html><script> window.location.href='./login.jsp';</script></html>");
}else{
 	boolean isadmin=false ;
 	String u_name = (String)u.get("user_name");
	if("admin".equals(u_name)) isadmin =true;
	String city = (String)u.get("city"); 
	if(city==null) city="";
	String district = (String)u.get("district");
	if(district==null) district="";
 
	UserDao ud = new UserDao();
	List<Map<String,Object>> city_list = ud.queryCity();
	List<Map<String,Object>> d_list = ud.queryDistrict(267);
 %>
 
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>无线发射台站信息库</title>

<!-- Bootstrap Core CSS -->
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../dist/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="../vendor/morrisjs/morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">

	<div id="wrapper">

 

		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><span style="font-family: '楷体'; font-size: 25px; color: #cc0000; text-shadow: 1px 1px 2px #980000;"><strong>云南省广播电视无线发射台站资源信息库</strong></span></a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">

			 
       			 <li><a href="./index.jsp"><span class="fa  fa-home" ></span>首页</a></li>
 
			</ul>
			<!-- /.navbar-top-links -->

 
			<!-- /.navbar-static-side -->
		</nav>

		<div style="margin:15px">
			<div class="row">
				<div class="col-lg-12">
					<div class="btn-group">
  						<button type="button" class="btn btn-info" style="width:200px" id="cityshow">市</button>
  						<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    							<span class="caret"></span>
    							<span class="sr-only">Toggle Dropdown</span>
  						</button>
  						<ul class="dropdown-menu">
  						<li><a href="#" onclick="citychange('0','')">市</a></li>
  						<% for(Map<String,Object> m : city_list){%>
  								<li><a href="#"  onclick="citychange('<%=m.get("id") %>','<%=m.get("name") %>')"><%=m.get("name") %></a></li>
  						<%} %>
  						</ul>
					</div>
				
				
				
				 <div class="btn-group">
  						<button type="button" class="btn btn-info" style="width:200px" id="districtshow">县/区</button>
  						<button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    							<span class="caret"></span>
    							<span class="sr-only">Toggle Dropdown</span>
  						</button>
  						<ul class="dropdown-menu"  id="districtshowbox">

  						</ul>
				</div>
				
			</div>

				<!-- /.col-lg-12 -->
			</div>
			<br/>
			 <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class="" style='color:#666666'>用户管理</span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 										<button type="button" class="btn btn-info   btn-sm" onclick='openuserform({"user_id":0})'> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      						</div>   
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
							<table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
									<th width="50px">序号</th>
									<th >用户名</th>
									<th >市</th>
									<th>县</th>
									<th width="190px">最后编辑时间</th>
									<th width="200px">操作</th>
									</tr>
								</thead>
								<tbody id="datalist">


								</tbody>
							</table>
							
							<div style="margin-top:30px;text-align:center;" id="list_loading">
										<img src="../img/loading.gif" height="32" width="32" />
							</div>
						</div>

					</div>
				</div>
			</div>
 
		</div>


		<!-- /.row -->

		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->




<!-- Modal -->
<div class="modal fade" id="user_modal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"> 详情</h4>
      </div>
      <div class="modal-body">
      
        			<form class="form-horizontal  list_info_form"   id="user_form" >
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">用户名</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="user_name" name="user_name" type="text" class="form-control"   placeholder="用户名..." maxlength="20">
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">密码1</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="user_pwd1" name="user_pwd1" type="password" class="form-control"   placeholder="" maxlength="20">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">密码2</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="user_pwd2" name="user_pwd2" type="password" class="form-control"   placeholder="">
     
    				</div><!-- /input-group -->
    				</div>
    				</div>  

					<div class="row">
  					<div class="col-sm-4">
      					<span class="">市</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					 <div class="btn-group">
  						<button type="button" class="btn btn-default" style="width:200px" id="cityshow1">市</button>
  						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    							<span class="caret"></span>
    							<span class="sr-only">Toggle Dropdown</span>
  						</button>
  						<ul class="dropdown-menu">
  						<li><a href="#" onclick="citychange1('0','')">市</a></li>
  						<% for(Map<String,Object> m : city_list){%>
  								<li><a href="#"  onclick="citychange1('<%=m.get("id") %>','<%=m.get("name") %>')"><%=m.get("name") %></a></li>
  						<%} %>
  						</ul>
					</div>
    				</div>
    				</div>
    				</div>   	
					
					<div class="row">
  					<div class="col-sm-4">
      					<span class="">县/区</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					 <div class="btn-group">
  						<button type="button" class="btn btn-default" style="width:200px" id="districtshow1">县/区</button>
  						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    							<span class="caret"></span>
    							<span class="sr-only">Toggle Dropdown</span>
  						</button>
  						<ul class="dropdown-menu"  id="districtshowbox1">

  						</ul>
						</div>
    				</div>
    				</div>
    				</div>  
    				
					 <input type="hidden" id="district"  name="district"  >
 					 <input type="hidden" id="city"  name="city"  >
 					 <input type="hidden" id="user_id"  name="user_id"  >
  				</form>
  				

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">  取消  </button>
        <button type="button" class="btn btn-success"   onclick="saveuser()" >  保存  </button>

      </div>
    </div>
  </div>
</div>
	<!-- jQuery -->
	<script src="../vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="../vendor/metisMenu/metisMenu.min.js"></script>
	<script src="../js/bootstrap3-typeahead.min.js"></script>
	<!-- Morris Charts JavaScript 
    <script src="../vendor/raphael/raphael.min.js"></script>
    <script src="../vendor/morrisjs/morris.min.js"></script>
    <script src="../data/morris-data.js"></script>
-->
	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js"></script>
	<script>
	
	var city_str = "";
	var district_str = "";
		function citychange(id,city) {
			if($("#cityshow").html() != city){
				city_str = city;
				district_str = "";
				showlist() ;
				if(city == ''){
					$("#cityshow").html('市');
					$("#districtshow").html("县/区");
					$("#districtshowbox").html("");
				}else{
					$("#cityshow").html(city);
					$("#districtshow").html("县/区");
					$.post("../UserInfo",{"method" : "district","id":id},function(data) {
	 
						var html = '<li><a href="#" onclick="districtchange(\'\')">县/区</a></li>';
						$.each(data,function(i, item) {
							html += '<li><a href="#" onclick="districtchange(\''+item.name+'\')">'+item.name+'</a></li>';
	 
							
						});
						$("#districtshowbox").html(html);
						}, "json");
				}
				
			}
		}
		
		function citychange1(id,city) {
			if($("#cityshow1").html() != city){
				$("#city").val(city);
				$("#district").val("");

				if(city == ''){
					$("#cityshow1").html('市');
					$("#districtshow1").html("县/区");
					$("#districtshowbox1").html("");
				}else{
					$("#cityshow1").html(city);
					$("#districtshow1").html("县/区");
					$.post("../UserInfo",{"method" : "district","id":id},function(data) {
	 
						var html = '<li><a href="#" onclick="districtchange1(\'\')">县/区</a></li>';
						$.each(data,function(i, item) {
							html += '<li><a href="#" onclick="districtchange1(\''+item.name+'\')">'+item.name+'</a></li>';
	 
							$("#districtshowbox1").html(html);
						});
						
						}, "json");
				}
				
			}
		}
		
		
		function districtchange1(district){
			if(district == ''){
				$("#district").val("");
				$("#districtshow1").html("县/区");
				
			}else{
				$("#district").val(district);
				$("#districtshow1").html(district);
			}
		}

		function districtchange(district){
			if(district == ''){
				district_str = "";
				$("#districtshow").html("县/区");
				
			}else{
				district_str = district;
				$("#districtshow").html(district);
			}
			showlist() ;
		}
		
		
		function showlist() {
 
 
			$.post("../UserInfo", {
				'method' : 'userlist',
				'city':city_str,
				'district':district_str
			}, function(data) {
				console.log(data); //  2pm
				var _html_arr = new Array();
				$.each(data, function(i, item) {
					_html_arr.push('<tr class="">');
					_html_arr.push('<td>' +(i+1)+ '</td>');
					_html_arr.push('<td>' + item.user_name + '</td>');
					_html_arr.push('<td>' + item.city + '</td>');
					_html_arr.push('<td>' + item.district + '</td>');
					_html_arr.push('<td>' + item.lasttime + '</td>');
 					if(item.user_name == "admin"){
 						_html_arr.push('<td>&nbsp;</td>');
 					}else{
 						_html_arr.push('<td>');
 						_html_arr.push("<button type='button' onclick='openuserform("+JSON.stringify(item)+")' style='margin-left: 10px;margin-top: 5px;' class='btn btn-info btn-xs'>编辑</button>");
 						_html_arr.push('<button type="button" onclick="del('+item.user_id+',\''+item.user_name+'\',$(this))" style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">删除</button>');
 						_html_arr.push('<button type="button" onclick="reset('+item.user_id+',$(this))" style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">重置密码</button>');
 						_html_arr.push('</td>');
 					}

                	_html_arr.push('</tr>');
				});
				$("#list_loading").hide();
				$("#datalist").html(_html_arr.join(''));

			}, "json");

		}
		
		
		function reset(id){
			$.post("../UserInfo?method=useredit&user_id="+id+"&user_pwd=123456", function(data) {
	         	if(data.result == 1){
	         		alert("已重置密码： 123456 ");
 
	         	}else{
	         		alert("重置失败!");
	         	}
			}, "json");
		}
		function  del(id,name,obj){
			 if(confirm("确定删除 "+name+" 用户？"))
     	    {
					$.post("../UserInfo?method=useredit&user_id="+id+"&user_status=0", function(data) {
			         	if(data.result == 1){
			         		$(obj).parents('tr').remove();
			         	}else{
			         		alert("删除失败!");
			         	}
					}, "json");
     	 
     	     }
			
		}
		$(function() {
			showlist() ;
		});
		
		
		
		
		function openuserform(user){
 
			if(user.user_id == 0){
				// 新增
				document.getElementById("user_form").reset();  //表单初始化
				districtchange1('');
				citychange1(0,'');
				$("#user_id").val(0);
				$('#user_pwd1').removeAttr("disabled"); 
 				$('#user_pwd2').removeAttr("disabled");
 				$('#user_name').removeAttr("disabled");
				$('#user_modal').modal({
				    keyboard: true,
				    show:true
				});
			}else{
				//编辑
					$("#user_id").val(user.user_id);
 					$("#user_name").val(user.user_name);
 					
 					$('#user_name').attr("disabled",true);
 					$('#user_pwd1').attr("disabled",true); 
 					$('#user_pwd2').attr("disabled",true);
 					if(user.city ==''){
 						$("#cityshow1").html('市');
 					}else{
 						$("#cityshow1").html(user.city);
 					}
 
 					if(user.district ==''){
 						$("#districtshow1").html('县/区');
 					}else{
 						$("#districtshow1").html(user.district);
 					}
 			 
 					
 					$("#city").val(user.city);
 					$("#district").val(user.district);
 					
					$('#user_modal').modal({
					    keyboard: true,
					    show:true
					});
					
 
				
				
				
			}

		}
		
		
		function saveuser(){
			var u_id = $("#user_id").val();
			var m="";
			var un = $("#user_name").val();
			if(un ==""){
				alert("请输入用户名");
				return;
			} 
			if(u_id ==0){
				m="useradd";
				var p1 = $("#user_pwd1").val();
				var p2 = $("#user_pwd2").val();
				if(p1 != p2){
					alert("输入的密码不一致！");
					return;
				}
			}else{
				m="useredit";
			}
 
			
			var from_data = $("#user_form").serialize();
			$.post("../UserInfo?method="+m, from_data, function(data) {
				if(data.result>0){
					$('#user_modal').modal('hide');
					showlist();//全部刷新
				}else{
					alert(data.msg);
				}
		         		
			}, "json");
			
			
		}
	</script>
</body>

</html>
<%} %>
