<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-th fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-plus fa-fw"></i> 新增台站
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa  fa-search fa-fw"></i> 高级查询
								</div>
						</a></li>
						
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa  fa-file-word-o fa-fw"></i> 导出报告
								</div>
						</a></li>

					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i>密码修改</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i>用户管理</a></li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> 退出</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">

						<li class="sidebar-search">
							<div class="input-group custom-search-form">
								<input type="text" class="form-control" style="margin: 0 auto;" data-provide="typeahead" data-items="4" data-provide="typeahead" placeholder="台站名称..."> <span class="input-group-btn">
									<button class="btn btn-default" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div> <!-- /input-group -->
						</li>

						<div style="margin-top:30px;text-align:center;" id="city_loading">
						<img src="../img/loading.gif" height="32" width="32" />
						</div>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					
				</div>

				<!-- /.col-lg-12 -->
			</div>
			<br/>
			 <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class="" style='color:#666666'>最近编辑 </span>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
							<table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
									<th  >市</th>
									<th  >台站名称</th>
									<th> 版本</th>
									<th  >最后编辑时间</th>
									<th  >操作</th>
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
		function showcity() {
			$.post("../StationInfo",{"method" : "city_count"},
				function(data) {
					console.log(data); //  2pm
					var html = "";
					$.each(data,function(i, item) {
						html += "<li  class='' id='city_li"+ i+ "'  onclick='city_station("+ i+ ","+ item.num+ ",\""+ item.city+ "\")'   ><a href='#' ><i class='fa fa-map-marker fa-fw'></i>"+ item.city;
						if (item.num > 0)
								html += "  &nbsp; &nbsp;<span class='badge '>"+ item.num+ "</span> &nbsp; &nbsp; <img id='loading_"+i+"' src='../img/loading2.gif'  style='display:none;'/>";
								html += "<span class='fa arrow'></span></a> <ul class='nav nav-second-level' id='city"+i+"' ></ul></li>";
						});

								// alert( $("#side-menu").html);
						$("#city_loading").hide();
						$("#side-menu").append(html);

				}, "json");

		}

		function city_station(id, num, city) {

			if ($("#city_li" + id).attr('class') == '') { //展开
				if (num != 0) {
					var cityid = "#city" + id;
					if ($(cityid).html().length == 0) {
						$("#city" + id).attr("class","nav nav-second-level collapsing");
						$("#loading_" + id).show();
						
						$.post("../StationInfo", {
							'method' : 'querylist',
							'page' : '1',
							'pageSize' : '100',
							'orderby' : 't_name',
							't_city' : city
						}, function(data) {
							console.log(data); //  2pm
							var html = "";
							$.each(data.list, function(i, item) { 
								html += "<li>   <a href='#' onclick='openstation("+ item.t_id + ")'><span class='glyphicon glyphicon-pawn' style='color:#cccccc'></span>   " + item.t_name+ "</a></li>";
							});
							$(cityid).html(html);

							$("#city_li" + id).attr("class", "active");
							$("#city" + id).attr("style", "");
							$("#city" + id).attr("class","nav nav-second-level collapse in");
							$("#city" + id).attr("aria-expanded", "true");
							$("#loading_" + id).hide();
						}, "json");

					} else {

						$("#city" + id).attr("class","nav nav-second-level collapse in");
						$("#city" + id).attr("aria-expanded", "true");
						$("#city" + id).attr("style", "");
						$("#city_li" + id).attr("class", "active");

					}
				}

			} else {
				//收缩
				$("#city_li" + id).attr("class", "");
				$("#city" + id).attr("style", "height: 0px;");
				$("#city" + id).attr("class", "nav nav-second-level collapse");
				$("#city" + id).removeAttr("aria-expanded");

			}

		}

		function showlist() {
			$.post("../StationInfo", {
				'method' : 'querylist',
				'page' : '1',
				'pageSize' : '20'
			}, function(data) {
				console.log(data); //  2pm
				var _html_arr = new Array();
				$.each(data.list, function(i, item) {
					_html_arr.push('<tr class="">');
					_html_arr.push('<td>' + item.t_city + '</td>');
					_html_arr.push('<td>' + item.t_name + '</td>');
					_html_arr.push('<td>V ' + item.t_version + '</td>');
					_html_arr.push('<td>' + item.t_cg_time + '</td><td>');
					_html_arr.push('<button type="button" onclick="window.location.href=\'./station_info.jsp?t_id=' + item.t_id + '\'" style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">编辑</button>');
					_html_arr.push('<button type="button" onclick="report('+item.t_id+')" style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">报告</button>');
					_html_arr.push('<button type="button" onclick="del('+item.t_id+')" style="margin-left: 10px;margin-top: 5px;" class="btn btn-info btn-xs">删除</button>');
					_html_arr.push('</td>');
                	_html_arr.push('</tr>');
				});
				$("#list_loading").hide();
				$("#datalist").html(_html_arr.join(''));

			}, "json");

		}

		function openstation(id) {
			window.location.href = "";
		}

		$(function() {
			showcity();
			showlist();
		});
	</script>
</body>

</html>