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

<title>电视台站管理</title>

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
				<a class="navbar-brand" href="index.html"><span style="font-family: '楷体'; font-size: 25px; color: #cc0000; text-shadow: 1px 1px 2px #980000;"><strong>电视台站管理</strong></span></a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">

				
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
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
							<table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
									<th >序号</th>
									<th >用户名</th>
									<th> 市</th>
									<th> 县</th>
									<th >最后编辑时间</th>
									<th >操作</th>
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
	 
							$("#districtshowbox").html(html);
						});
						
						}, "json");
				}
				
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
 
					_html_arr.push('<td>');
					_html_arr.push('<button type="button" onclick="window.location.href=\'./edit_info.jsp?id=' + item.t_id + '&action=edit \'    " style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">编辑</button>');
					_html_arr.push('<button type="button" onclick="del('+item.t_id+'\',$(this))" style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">删除</button>');
					_html_arr.push('</td>');
                	_html_arr.push('</tr>');
				});
				$("#list_loading").hide();
				$("#datalist").html(_html_arr.join(''));

			}, "json");

		}
		
		
	
		function  del(id,v,name,obj){
			 if(confirm("确定删除 "+name+"  V"+v+"版本？"))
     	    {
					$.post("../StationInfo?method=update&t_id="+id+"&t_status=-1", function(data) {
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
	</script>
</body>

</html>
<%} %>
