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

				 <button type="button" class="btn btn-primary btn-sm" style="margin:10px">首页</button>
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
						<div class="dropdown" style="margin:5px">
							  
  										<button class="btn btn-default btn-sm dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    										版本  V4 
    									<span class="caret"></span>
  										</button>
  										<ul class="dropdown-menu" aria-labelledby="dropdownMenu1" style="position:absolute;height:120px;overflow:auto">
    										<li><a href="#">V4</a></li>
    										<li><a href="#">V3</a></li>
    										<li><a href="#">V2</a></li>
    										<li><a href="#">V1</a></li>
    						
  										</ul>
						</div>
									
					<ul class="nav" id="side-menu">

 


 						<li class ="active">
                            <a href="#"><i class="glyphicon glyphicon-pawn"></i>xxxxxx 电视台<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level"  aria-expanded="true" class="nav nav-second-level collapse in">
                                <li> <a href="flot.html" ><span class='fa fa-edit' style='color:#cc2200'></span> 台站概况</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 供配电</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 节目传送机房</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 发射机房</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 现有设备登记表（调频）</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 现有设备登记表（电视，数字和模拟）</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 控制室</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 发射台自动化</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 现有塔桅</a></li>
                                <li><a href="morris.html"><span class='fa fa-edit' style='color:#cccccc'></span> 新增电视天馈系统</a></li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
 
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
                            <span class="">编辑 </span>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            
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
 

 
		$(function() {
 
		});
	</script>
</body>

</html>
