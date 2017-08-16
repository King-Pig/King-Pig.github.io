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

				
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
									
					<ul class="nav" id="side-menu">

 						<li class ="active">
                            <a href="#"><i class="glyphicon glyphicon-pawn"></i>xxxxxx 电视台<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level"  aria-expanded="true" class="nav nav-second-level collapse in">
                                <li><a href="#" onclick="editpage(1)"><span id="ico1" class='fa fa-edit' style='color:#cc2200'></span> 台站概况</a></li>
                                <li><a href="#" onclick="editpage(2)"><span id="ico2" class='fa fa-edit' style='color:#cccccc'></span> 供配电</a></li>
                                <li><a href="#" onclick="editpage(3)"><span id="ico3" class='fa fa-edit' style='color:#cccccc'></span> 节目传送机房</a></li>
                                <li><a href="#" onclick="editpage(4)"><span id="ico4" class='fa fa-edit' style='color:#cccccc'></span> 发射机房</a></li>
                                <li><a href="#" onclick="editpage(5)"><span id="ico5" class='fa fa-edit' style='color:#cccccc'></span> 现有设备登记表（调频）</a></li>
                                <li><a href="#" onclick="editpage(6)"><span id="ico6" class='fa fa-edit' style='color:#cccccc'></span> 现有设备登记表（电视，数字和模拟）</a></li>
                                <li><a href="#" onclick="editpage(7)"><span id="ico7" class='fa fa-edit' style='color:#cccccc'></span> 控制室</a></li>
                                <li><a href="#" onclick="editpage(8)"><span id="ico8" class='fa fa-edit' style='color:#cccccc'></span> 发射台自动化</a></li>
                                <li><a href="#" onclick="editpage(9)"><span id="ico9" class='fa fa-edit' style='color:#cccccc'></span> 现有塔桅</a></li>
                                <li><a href="#" onclick="editpage(10)"><span id="ico10" class='fa fa-edit' style='color:#cccccc'></span> 电视天馈系统</a></li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
 
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper" style=" padding:10px;">
					 
					<nav class="navbar navbar-default" style=" margin-bottom:10px">
				
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
 		<div class="navbar-brand" > 
 		
 		
 		</div>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
     
        
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa  fa-paperclip" ></span> 当前版本 V1<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">V3</a></li>
            <li><a href="#">V2</a></li>
            <li><a href="#">V1</a></li>
          </ul>
        </li>
           <li><a href="#"><span class="fa fa-copy" ></span> 复制</a></li>
           <li><a href="#"><span class="fa fa-trash-o" ></span> 删除</a></li>
      </ul>
 
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="fa  fa-home" ></span>首页</a></li>
         
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

			 
			 <div class="row pageedit" id="page1"  >
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  台站概况</span>
                                <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(1)">保存</button>
      							</div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(1)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			<div class="row pageedit" id="page2" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  供配电</span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(2)">保存</button>
      						</div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(2)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			<div class="row pageedit" id="page3" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  节目传送机房</span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(3)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(3)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			
			<div class="row pageedit" id="page4" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  发射机房 </span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(4)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                             <button type="button" class="btn btn-success" onclick="editok(4)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			
			<div class="row pageedit" id="page5" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  现有设备登记表（调频）</span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(5)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(5)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			
			<div class="row pageedit" id="page6" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>   现有设备登记表（电视，数字和模拟）</span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(6)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(6)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			
			<div class="row pageedit" id="page7" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  控制室 </span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(7)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(7)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			

			<div class="row pageedit" id="page8" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>   发射台自动化 </span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(8)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(8)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			
			
			
			<div class="row pageedit" id="page9" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>   现有塔桅 </span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(9)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(9)">下一项</button>
                        </div>
					</div>
				</div>
			</div>
			
			
			
			<div class="row pageedit" id="page10" style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>   电视天馈系统 </span>
                            <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(10)">保存</button>
      						</div>                            
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="editok(10)">完成</button>
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
	function editpage(unm){
 		$(".pageedit").hide();
 		$(".fa-edit").css("color","#cccccc");
 
 		$("#page"+unm).show();	
 		$("#ico"+unm).css("color","#cc2200");
 		
 	}

 	function  editok(unm){
 		 
 		var n = unm+1;
 		if(n<=10){
 			
 			editpage(n);
 		}
 		
 		
 	}
		$(function() {
 
		});
	</script>
</body>

</html>
