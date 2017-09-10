<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
 
 

String id = request.getParameter("id");
String action = request.getParameter("action");
if(id==null)id="0";
if(action == null) action ="";

%>

<!DOCTYPE html>
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
<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">

<link href="../css/select2.min.css" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    	<style type="text/css">
	.ad_img{
		width: 180px;
		height: 320px;
		background-color:#d9d9d9;
		margin: 16px;
		 float:left;
		 text-align:center;
		 
		 font-size:80px;
	}
	
	.numbershow{
		filter:alpha(opacity=10);-moz-opacity:0.1;opacity:0.1;
	}
	
	.butup{
 
		 position:relative; top:125px;
	}
	.file_box_info{
		width:220px;
		height:100%;
		 display:inline;
		margin:12px;
	}
	
	.file_img{
	margin:5px;
	width:220px;
		
	}
	
	.file_noimg{
	margin:3px;
	}
	.myfiledel{
			position: relative;
			left :-30px;
	}
	
		.myfiledel1{
			position: relative;
			left :10px;
	}
	
	.file_box_info1{
		width:50px;
		height:50px;
		 display:inline;
		margin:18px;
	}
	
</style>

</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
 <input type="hidden"  id="t_id"  value="<%=id %>"> 
  <input type="hidden"  id="action"  value="<%=action %>"> 
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

				
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
									
					<ul class="nav" id="side-menu">

 						<li class ="active"   >
                            <a href="#"><i class="glyphicon glyphicon-pawn"></i><span id="st_name"></spna> </span><span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level"  aria-expanded="true" >
                                <li><a href="#" onclick="editpage(1)"><span id="ico1" class='fa fa-edit' style='color:#cc2200'></span> 1.台站概况</a></li>
                                <li><a href="#" onclick="editpage(2)"><span id="ico2" class='fa fa-edit' style='color:#cccccc'></span> 2.供配电</a></li>
                                <li><a href="#" onclick="editpage(3)"><span id="ico3" class='fa fa-edit' style='color:#cccccc'></span> 3.节目传送机房</a></li>
                                <li><a href="#" onclick="editpage(4)"><span id="ico4" class='fa fa-edit' style='color:#cccccc'></span> 4.发射机房</a></li>
                                <li><a href="#" onclick="editpage(5)"><span id="ico5" class='fa fa-edit' style='color:#cccccc'></span> 5.现有设备登记表（调频）</a></li>
                                <li><a href="#" onclick="editpage(6)"><span id="ico6" class='fa fa-edit' style='color:#cccccc'></span> 6.现有设备登记表（电视，数字和模拟）</a></li>
                                <li><a href="#" onclick="editpage(7)"><span id="ico7" class='fa fa-edit' style='color:#cccccc'></span> 7.控制室</a></li>
                                <li><a href="#" onclick="editpage(8)"><span id="ico8" class='fa fa-edit' style='color:#cccccc'></span> 8.发射台自动化</a></li>
                                <li><a href="#" onclick="editpage(9)"><span id="ico9" class='fa fa-edit' style='color:#cccccc'></span> 9.现有塔桅</a></li>
                                <li><a href="#" onclick="editpage(10)"><span id="ico10" class='fa fa-edit' style='color:#cccccc'></span> 10.电视天馈系统</a></li>
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
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="fa  fa-paperclip" ></span> <span id="now_version">当前版本  </span><span class="caret"></span></a>
          <%if ( !"add".equals(action) ){ %>
          <ul class="dropdown-menu"  id="t_version">

          </ul>
             <%} %>
        </li>
        <%if ( !"add".equals(action) ){ %>
           <li id="copy_info"  style="display:none;"><a href="#" onclick="copy()"><span class="fa fa-copy" ></span> 复制</a></li>
           <%}%>
           <li><a href="#" onclick="del()"><span class="fa fa-trash-o" ></span> 删除</a></li>
 
      </ul>
 
      <ul class="nav navbar-nav navbar-right">
        <li><a href="./index.jsp"><span class="fa  fa-home" ></span>首页</a></li>
         
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

			 <div style="margin-top:30px;text-align:center;" id="list_loading">
						<img src="../img/loading.gif" height="32" width="32" />
			</div>
			 <div class="row pageedit" id="page1"  style="display:none;">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <span class=""><span class='fa  fa-table' style='color:#cccccc'></span>  台站概况</span>
                                <div class="navbar-right" style='margin-top:-5px;margin-right:10px'>
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(1,0)">保存</button>
      							</div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form1.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(1,1)">下一项</button>
                            <div id="results"></div>
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
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(2,0)">保存</button>
      						</div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form2.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(2,1)">下一项</button>
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
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(3,0)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form3.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(3,1)">下一项</button>
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
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(4,0)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form4.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                             <button type="button" class="btn btn-success" onclick="save(4,1)">下一项</button>
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
 								 <button type="button" class="btn btn-info   btn-sm" onclick="openwindow(4,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							 <table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
									<th >序号</th>
									<th >频率</th>
									<th>额定功率</th>
									<th>发射功率</th>
									<th >节目</th>
									<th >发射机厂商/设备型号</th>
									<th >是否具备对外智能接口</th>
									<th >智能接口类型</th>
									<th >主/备</th>
									<th >多工情况</th>
									<th>天线类型</th>
									<th>极化</th>
									<th>方向性</th>
									<th>天线中心挂高</th>
									<th>馈线类型、接头类型</th>
									<th>长</th>
									<th >操作</th>
									</tr>
								</thead>
								<tbody id="d_list1">

								</tbody>
							</table>
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="nextpage(5)">下一项</button>
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
									<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(5,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 					 		<table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
									<th >序号</th>
									<th >频率</th>
									<th>额定功率</th>
									<th>发射功率</th>
									<th >节目</th>
									<th >发射机厂商/设备型号</th>
									<th >是否具备对外智能接口</th>
									<th >智能接口类型</th>
									<th >主/备</th>
									<th >多工情况</th>
									<th>天线类型</th>
									<th>极化</th>
									<th>方向性</th>
									<th>天线中心挂高</th>
									<th>馈线类型、接头类型</th>
									<th>长</th>
									<th >操作</th>
									</tr>
								</thead>
								<tbody id="d_list2">

								</tbody>
							</table>
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="nextpage(6)">下一项</button>
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
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(7,0)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form7.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(7,1)">下一项</button>
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
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(8,0)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form8.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(8,1)">下一项</button>
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
 									<button type="button" class="btn btn-default   btn-sm" onclick="save(9,0)">保存</button>
      						</div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<jsp:include page="form9.jsp" flush="true" /> 
						</div>
                        <div class="panel-footer"  style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(9,1)">下一项</button>
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
 										<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(6,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      						</div>                            
                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
 							<table class="table table-striped table-bordered table-hover" id="dataTables-example">
								<thead>
									<tr>
									<th >序号</th>
									<th >天线类型</th>
									<th>高度</th>
									<th>播出频率</th>
									<th >馈线型号</th>
									<th >操作</th>
									</tr>
								</thead>
								<tbody id="as_list">

								</tbody>
							</table>

						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="saveall()">完成</button>
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
<div class="modal fade" id="list_modal"  tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel"> 详情</h4>
      </div>
      <div class="modal-body">

  
 			<form class="form-horizontal  list_info_form"  id="list_info_form1" style="display:none;">
  					
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">卫星名称</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="s_name"  name="s_name"  type="text" class="form-control"   placeholder="卫星名称">
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">天线口径</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="s_a_caliber" name="s_a_caliber" type="number" class="form-control"   placeholder="米">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">节目内容</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="s_p_content" name="s_p_content" type="text" class="form-control"   placeholder="">
     
    				</div>
    				</div>
    				</div>  
    				<input type="hidden" id="s_id"  name="s_id"  >
    				<input type="hidden" id="form_tag1"  name="form_tag"  value="s">
  				</form>
 


				<form class="form-horizontal  list_info_form"  id="list_info_form2" style="display:none;">
  					
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">传输方向</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					    <select id="o_direction" name ="o_direction" class="form-control">
								<option value="1">有线网络公司方向</option>
								<option value="2">广播电视台方向</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">总芯数</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="o_c_count" name="o_c_count" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">传输容量</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="o_t_capacity" name="o_t_capacity" type="number" class="form-control"   placeholder="">
     
    				</div><!-- /input-group -->
    				</div>
    				</div>  

					<div class="row">
  					<div class="col-sm-4">
      					<span class="">传输节目内容</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="o_p_content" name="o_p_content" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   	

 					<div class="row">
  					<div class="col-sm-4">
      					<span class="">空余芯数</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="o_c_free" name="o_c_free" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   
					
					
 					<div class="row">
  					<div class="col-sm-4">
      					<span class="">信号格式</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
					      	<select id="o_s_format" name ="o_s_format" class="form-control">
								<option  >射频</option>
								<option  >ASI</option>
								<option  >IP</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div>   

 					<div class="row">
  					<div class="col-sm-4">
      					<span class="">信号编码格式</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
					      	<select id="o_s_code" name ="o_s_code" class="form-control">
								<option  >MPEG-2</option>
								<option  >H264</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div> 
    				<input type="hidden" id="o_id"  name="o_id"  >
    				<input type="hidden" id="form_tag2"  name="form_tag"  value="o">
  				</form>
 

 
				<form class="form-horizontal  list_info_form"   id="list_info_form3" style="display:none;">
  					
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">台站名称</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="m_name" name="m_name" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">传输频率</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="m_t_frequency" name="m_t_frequency" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">传输容量</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="m_t_capacity" name="m_t_capacity" type="number" class="form-control"   placeholder="">
     
    				</div><!-- /input-group -->
    				</div>
    				</div>  

					<div class="row">
  					<div class="col-sm-4">
      					<span class="">已用容量</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="m_u_capacity" name="m_u_capacity" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   	

 					<div class="row">
  					<div class="col-sm-4">
      					<span class="">传输节目内容</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="m_t_content" name="m_t_content" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   
 					 <input type="hidden" id="m_id"  name="m_id"  >
    				<input type="hidden" id="form_tag3"  name="form_tag"  value="m">
  				</form>


				<form class="form-horizontal  list_info_form"   id="list_info_form4" style="display:none;">
  					
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">频率</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_frequency" name="d_frequency" type="number" class="form-control"   placeholder="DS，MHz">
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">额定功率</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_r_power" name="d_r_power" type="number" class="form-control"   placeholder="kW">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">发射功率</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="d_t_power" name="d_t_power" type="number" class="form-control"   placeholder="kW">
     
    				</div><!-- /input-group -->
    				</div>
    				</div>  

					<div class="row">
  					<div class="col-sm-4">
      					<span class="">节目</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_program" name="d_program" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   	

 					<div class="row">
  					<div class="col-sm-4">
      					<span class="">发射机厂商/设备型号</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_m_m" name="d_m_m" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   
    				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">是否具备对外智能接口</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
    				       <select id="d_i_interface" name ="d_i_interface" class="form-control">
								<option value ="1" >是</option>
								<option value ="0" >否</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div>  
    				
    			    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">智能接口类型</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
    				       <select id="d_f_c_i" name ="d_f_c_i" class="form-control">
								<option>RS485</option>
								<option>RS232</option>
								<option>以太网</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div>  	
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">主/备</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
    				       <select id="d_m_b" name ="d_m_b" class="form-control">
								<option >主</option>
								<option >备</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div> 
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">多工情况</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_multiple" name="d_multiple" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>  
    				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">天线类型</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_f_type" name="d_f_type" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>  
    				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">极化</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					 
      					    <select id="d_f_polarity" name ="d_f_polarity" class="form-control "   >
                             	<option>水平</option>
								<option>垂直</option>
							</select>
    				</div><!-- /input-group -->
    				</div>
    				</div>  
    				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">方向性</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="d_f_direction" name="d_f_direction" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>  
    				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">天线中心挂高</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id=d_f_h name="d_f_h" type="number" class="form-control"   placeholder="米">
    				</div><!-- /input-group -->
    				</div>
    				</div> 
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">馈线类型、接头类型</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id=d_f_c_type name="d_f_c_type" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div> 
    				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">馈线长</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id=d_f_length name="d_f_length" type="number" class="form-control"   placeholder="米">
    				</div><!-- /input-group -->
    				</div>
    				</div> 
    				
    				
 					 <input type="hidden" id="d_id"  name="d_id"  >
 					 <input type="hidden" id="d_type"  name="d_type"  >
    				<input type="hidden" id="form_tag4"  name="form_tag"  value="d">
  				</form>
  				
  				
  				
  				<form class="form-horizontal  list_info_form"   id="list_info_form6" style="display:none;">
  					
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">天线类型</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="as_type" name="as_type" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">高度</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="as_hieght" name="as_hieght" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">播出频率</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="as_frequency" name="as_frequency" type="number" class="form-control"   placeholder="">
     
    				</div><!-- /input-group -->
    				</div>
    				</div>  

					<div class="row">
  					<div class="col-sm-4">
      					<span class="">馈线型号</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="as_model" name="as_model" type="text" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   	

 					 
 					 <input type="hidden" id="as_id"  name="as_id"  >
    				<input type="hidden" id="form_tag6"  name="form_tag"  value="as">
  				</form>
  				
  				
  				  <form class="form-horizontal  list_info_form"   id="list_info_form7" style="display:none;">
  					
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">UPS容量（kVA）</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="power_capacity" name="power_capacity" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>
    				
  					<div class="row">
  					<div class="col-sm-4">
      					<span class="">UPS数量</span>
    				</div>
    				<div class="col-sm-6">
    				<div class="form-group">
      					<input id="power_quantity" name="power_quantity" type="number" class="form-control"   placeholder="">
    				</div><!-- /input-group -->
    				</div>
    				</div>   				
    				
    				<div class="row">
  					<div class="col-sm-4">
      					<span class="">UPS负荷（kVA）</span>
    				</div>

    				<div class="col-sm-6">
    				<div class="form-group">
    				
						<input id="power_load" name="power_load" type="number" class="form-control"   placeholder="">
     
    				</div><!-- /input-group -->
    				</div>
    				</div>  

 

 					 <input type="hidden" id="power_type"  name="power_type"  >
 					 <input type="hidden" id="power_id"  name="power_id"  >
    				<input type="hidden" id="form_tag7"  name="form_tag"  value="power">
  				</form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">  取消  </button>
        <button type="button" class="btn btn-success"   onclick="savelistinfo()" >  保存  </button>

      </div>
    </div>
  </div>
</div>


 <form id="uploadform"  action="../uploadfile" method="post" enctype="multipart/form-data"  style="display:none;" >
        <input  id="upload_file" name="upload_file"   type="file"   onchange="upload($(this))" >
        <input  id="upload_file_type" name="upload_file_type"   type="text"   >
</form>






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

	<script src="../js/bootstrap-datetimepicker.min.js"></script>
	<script src="../js/populateForm.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js"></script>
	<script type="text/javascript"  src="../js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script src="../js/select2.min.js"></script>
	<script>
	 	var $ta_sm_m_c_Multi;
		var $ta_vs_region_Multi;


	function uploadfile(type){
		$('#upload_file_type').val(type);
		$('#upload_file').click();

	}
	function upload(o){
		var files = $('#upload_file').prop('files');
		 var fdata = new FormData();
		 fdata.append('t_id', $('#t_id').val());
		 fdata.append('file_group', $('#upload_file_type').val());
		 fdata.append('file', files[0]);
		 
		 $.ajax({
			 url: '../UploadFile',
			    type: 'POST',
			    cache: false,
			    data: fdata,
			    processData: false,
			    contentType: false,
			    dataType:'json',
			 success: function(data){
				 if(data.result ==1 ){
 					if(data.file_img ==1){
	        			$("#file_box"+data.file_group).append("<div class='file_box_info'   id='file_box_info"+data.file_id+"'><img class='file_img' src='"+encodeURI("../../files/"+data.file_path)+"' ><button type='button' class='myfiledel btn btn-inverse btn-circle' onclick='file_del("+data.file_id+")'><i class='fa fa-times'></i></div>");
				 	}else{
				 		$("#file_box"+data.file_group).append("<div class='file_box_info1' id='file_box_info"+data.file_id+"'><img class='file_noimg' src='../img/script-text.png'> <a href='#' onclick='openfile(\""+'../../files'+data.file_path+"\" )'>"+data.file_name+"</a><button type='button' class=' myfiledel1 btn btn-inverse btn-circle' onclick='file_del("+data.file_id+")'><i class='fa fa-times'></i></div>")
					 }
				 
		      }else{
		    	  
		     	 alert(0);
		      }
			 }
		 });
		 
	/* 	 $.post("../UploadFile", fdata, function(data) {
			 if(data.result ==1 ){
 
	        		var tmp = "";
	        		if(data.file_num>1){
	        			tmp='<div id="img'+datajson.ad_id+'" class="ad_img" style="background-image: url(../..'+data.file_url+')" ><span class="numbershow">'+datajson.file_num+'</span><div class="butup"><button  type="button"   onclick="file_up()" class="btn btn-default btn-xs">UP</button>&nbsp;&nbsp;&nbsp;&nbsp;<button  type="button"   onclick="del('+ad_group_id+','+datajson.ad_number+','+datajson.ad_id+')" class="btn btn-default btn-xs">DEL</button></div></div>'
	        		}else{
	        			tmp='<div id="img'+datajson.ad_id+'" class="ad_img" style="background-image: url(../..'+data.file_url+')" ><span class="numbershow">'+datajson.file_num+'</span><div class="butup"> <button  type="button"   onclick="file_del()" class="btn btn-default btn-xs">DEL</button></div></div>'
	        		}
	        		 
	        		
	        		$('#div_img').append(tmp);

	        	}else{
	        		$(obj).next().text('上传失败').show();
	        	}
		         		
			}, "json");
	 */
	}
	
 
	
    function openfile(url){
    	window.open(url);  
    }
 
 	var max_t_version=0;
	var save_list_info_num;   //表单序号
	var save_list_info_type;  //表单标签，与数据操作ID 有关系
	
	//模态窗口
 
	function openwindow(num,id){
		var d_type =0;
		var power_type = 0;
		if(num == 5){
			num = num-1; 
			d_type = 2
		}else if(num == 4){
			d_type = 1
		}
		 if(num == 8){
				num = num-1; 
				power_type = 2
		}else if(num == 7){
			power_type = 1
		}
		 
		$(".list_info_form").hide();
		$("#list_info_form"+num).show();	
		save_list_info_num = num;
		
		var type = $("#form_tag"+save_list_info_num).val();
		var nowid =  type+"_id";
		var mt = type+"_info";
		if(id == 0){
			// 新增
			save_list_info_type = 'add';
			document.getElementById("list_info_form"+num).reset();  //表单初始化
			if(d_type != 0)	$('#d_type').val(d_type);
			if(power_type != 0)	$('#power_type').val(power_type);
			
			$("#"+nowid).val(0);
			$('#list_modal').modal({
			    keyboard: true,
			    show:true
			});
		}else{
			//编辑
			save_list_info_type = 'update';
			$("#"+nowid).val(id);
			
			$.post("../DeviceInfo",{'method':mt,'id':id},function(result){
 
				$("#list_info_form"+num).populateForm(result);
 
				$('#list_modal').modal({
				    keyboard: true,
				    show:true
				});
				
		  }, "json");
			
			
			
		}

	}
	
	//模态窗口 数据保存
	function savelistinfo(){
		var i = formValuesCheck("list_info_form"+save_list_info_num);
		if( i == 0){
			//验证通过
 			var id = $("#t_id").val();
 			var mt = $("#form_tag"+save_list_info_num).val() + "_"+save_list_info_type;
			var from_data = $("#list_info_form"+save_list_info_num).serialize();
			$.post("../DeviceInfo?method="+mt+"&t_id="+$('#t_id').val(), from_data, function(data) {
				if(data.result>0){
					$('#list_modal').modal('hide');
					getAllListData();//全部刷新
				}
		         		
			}, "json");
			
		}
	}
	
	//列表数据删除
	function del_info(type,id){
		var mt = type+"_del";
		$.post("../DeviceInfo?method="+mt+"&id="+id, function(data) {
			if(data.result>0){
				getAllListData();//全部刷新
			}
	         		
		}, "json");
		
		
	}
	
	//左侧翻页效果
	function editpage(unm){
 		$(".pageedit").hide();
 		$(".fa-edit").css("color","#cccccc");
 
 		$("#page"+unm).show();	
 		$("#ico"+unm).css("color","#cc2200");
 		
 	}
	
	function nextpage(unm){
		var n = unm+1;
			if(n<=10){
				editpage(n);
			}
	}
	
 
	
	function saveall(){
		var i = formValuesCheck("info_from1");
		if(i>0){
			alert("台站情况未填写完整");
			return ;
		}
		
		 i = formValuesCheck("info_from2");
			if(i>0){
				alert("供配电未填写完整");
				return ;
			}
			
		 i = formValuesCheck("info_from3");
			if(i>0){
				alert("节目传送机房未填写完整");
				return ;
			}
			
		 i = formValuesCheck("info_from4");
			if(i>0){
				alert("发射机房未填写完整");
				return ;
			}
			
			
			
		 i = formValuesCheck("info_from7");
			if(i>0){
				alert("控制室未填写完整");
				return ;
			}
			
		 i = formValuesCheck("info_from8");
			if(i>0){
				alert("发射台自动化未填写完整");
				return ;
			}
			
		 i = formValuesCheck("info_from9");
			if(i>0){
				alert("现有塔桅未填写完整");
				return ;
			}
			
			
			if($('#s_list').html() == "" ){
				alert("卫星设备未录入");
				return ;
			}
			if($('#o_list').html() == "" ){
				alert("光缆设备未录入");
				return ;
			}
			if($('#m_list').html() == "" ){
				alert("微波设备未录入");
				return ;
			}
			if($('#d_list1').html() == "" ){
				alert("现有设备登记未录入");
				return ;
			}
 
			$.post("../StationInfo?method=update&t_id="+$("#t_id").val()+"&t_status=1", function(data) {
	         	if(data.result == 1){
	        	    if(confirm("已保存成功，是否放回首页？"))
	        	   	 
	        	    {
	        	        location.href="./index.jsp";
	        	 
	        	     }
				}
	         		
			}, "json");
			
		
	}
	
	
 
	function  del(){
		 if(confirm("确定删除当前 此台站信息 版本 ？"))
	    {
				$.post("../StationInfo?method=update&t_id="+$("#t_id").val()+"&t_status=-1", function(data) {
		         	if(data.result == 1){
		         		 location.href="./index.jsp";
		         	}else{
		         		alert("删除失败!");
		         	}
				}, "json");
	 
	     }
		
	}
 
	//表单提交
	function save(unm,next){
		var i = formValuesCheck("info_from"+unm);
		if( i == 0){
			//验证通过
 			var id = $("#t_id").val();
			var from_data = $("#info_from"+unm).serialize();
			$.post("../StationInfo?method=update&t_id="+id, from_data, function(data) {
		         	if(next == 1){
		         		nextpage(unm);
					}else{
						
						alert("当前表单保存成功！");
					}
		         		
			}, "json");
			
		}
	}
	
	function copy(){
		showLoading();
		$.post("../StationInfo",{'method':'copy','max_v':max_t_version,'t_id':$("#t_id").val()},function(result){
			
			if(result.copy1 >0){
				hideLoading();
				 if(confirm("复制成功，是否立即查看？")){
					 openedit(result.copy1);
				 }
				 hideLoading();
			}else{
				hideLoading();
				alert("复制失败！");
			}
			
		 },"json");
		
	}
	
	
	
	function initLoading(){
	    $("body").append("<!-- loading -->" +
	            "<div class='modal fade' id='loading' tabindex='-1' role='dialog' aria-labelledby='myModalLabel' data-backdrop='static'>" +
	            "<div class='modal-dialog' role='document'>" +
	            "<div class='modal-content'>" +
	            "<div class='modal-header'>" +
	            "<h4 class='modal-title' id='myModalLabel'>提示</h4>" +
	            "</div>" +
	            "<div id='loadingText' class='modal-body'>" +
	            "<span  ><img src='../img/loading.gif' height='32' width='32' /></span>" +
	            "处理中，请稍候..." +
	            "</div>" +
	            "</div>" +
	            "</div>" +
	            "</div>"
	    );
	}
	
	
	function showLoading(){
	    //$("#loadingText").html(text);
	    $("#loading").modal("show");
	}
	function hideLoading(){
	    $("#loading").modal("hide");
	}
	
	
	function openedit(id){
		window.location.href = "./edit_info.jsp?id="+ id+"&action=edit";
	}
	//加载表单数据
	function editform(id){
		$("#side-menu").hide();
		$(".pageedit").hide();
		$("#list_loading").show();
		
		$.post("../StationInfo",{'method':'queryinfo','t_id':id},function(result){
					$('#t_version').html("");
					$.each(result.version_list, function(i, item) {
						if(i==0) max_t_version = item.t_version;
						$('#t_version').append("<li><a href='#' onclick='openedit("+item.t_id+")'>V "+item.t_version+"</a></li>");  
					});
					$('#now_version').html("当前版本 V "+result.t_version+"."+result.t_version_1+"."+result.t_version_2);
					if(result.t_status==1){
						
						$("#copy_info").show();
					}
					
					$('#st_name').html(result.t_name);  
 					$("#info_from1").populateForm(result);
 					$("#info_from2").populateForm(result);
 					$("#info_from3").populateForm(result);
 					$("#info_from4").populateForm(result);
 					$("#info_from7").populateForm(result);
 					$("#info_from8").populateForm(result);
 					$("#info_from9").populateForm(result);

 					if(result.ta_sm_m_c !=""){
 						var d =  result.ta_sm_m_c.split(",");
 						 $ta_sm_m_c_Multi.val(d).trigger("change");
 					}
 					if(result.ta_vs_region !=""){
 						var d =  result.ta_vs_region.split(",");
 						 $ta_vs_region_Multi.val(d).trigger("change");
 					}
 					
 					showfiles(result.files);
 					$("#list_loading").hide();
 					$("#side-menu").show();
 					$("#page1").show();	
			  }, "json");
	}


	function showfiles(o){
		$.each(o, function(i, item) {
			
				if(item.file_img ==1){
        			$("#file_box"+item.file_group).append("<div class='file_box_info' id='file_box_info"+item.file_id+"'><img class='file_img' src='"+encodeURI("../../files/"+item.file_path)+"' ><button type='button' class='myfiledel btn btn-inverse btn-circle' onclick='file_del("+item.file_id+")'><i class='fa fa-times'></i></div>");
			 	}else{
			 		$("#file_box"+item.file_group).append("<div class='file_box_info1' id='file_box_info"+item.file_id+"'><img class='file_noimg' src='../img/script-text.png'> <a href='#' onclick='openfile(\""+'../../files'+item.file_path+"\" )'>"+item.file_name+"</a><button type='button' class=' myfiledel1 btn btn-inverse btn-circle' onclick='file_del("+item.file_id+")'><i class='fa fa-times'></i></div>")
				 }
			       //$("#file_box"+item.file_group).append("<div class='file_box_info' id='file_box_info"+item.file_id+"'><img class='file_img' src='"+encodeURI("../../files/"+item.file_path)+"' ><button type='button' class='myfiledel btn btn-inverse btn-circle' onclick='file_del("+item.file_id+")'><i class='fa fa-times'></i></div>");
			
		});
		
	}
	
	
	function file_del(id){
		$.post("../StationInfo",{'method':'file_del','file_id':id},function(data){
				if(data.result == 1){
					$("#file_box_info"+id).remove() ;
				}
		},"json");
		
		
	}


	
	//表单必填校验
 	function formValuesCheck(fname) {

 		var fields = $("#"+fname).serializeArray(); 
 		var r = 0;
 		var op = "";
 	    jQuery.each(fields, function(i, field){
 	    	if(field.value  == ""){
 	    		op =  $("#"+field.name).attr("optional");  //非必填
 	    		if (typeof(op) == "undefined"){ 
 	 	    		 r++;
 	 	    		$("#"+field.name).parent().addClass("has-error");
 	    			
 	    		}
 	    	}else{
 	    		$("#"+field.name).parent().removeClass("has-error");
 	    	}
 	    });
 	    
 	    if(r){
 	    	alert("请填写完整（红色框为必填项）");
 	    }
 	    return r;
 	  }
 	 

		//时间 控件初始化
		$(function() {
			  $(".form_datetime").datetimepicker({
				  locale:'bootstrap-datetimepicker.zh-CN',
				  format: 'yyyy-mm',
				  minView:'month',
				  autoclose:true
				  });
			  
			  $ta_sm_m_c_Multi =  $("#ta_sm_m_c_1").select2();
			  $ta_vs_region_Multi =  $("#ta_vs_region_1").select2();
			  
			  
			  $ta_sm_m_c_Multi.on("select2:select", function (e) { 
				  var d = 	$ta_sm_m_c_Multi.val();
				  $("#ta_sm_m_c").val(d);
				});
			  $ta_sm_m_c_Multi.on("select2:unselect", function (e) {
				  var d = 	$ta_sm_m_c_Multi.val();
				  $("#ta_sm_m_c").val(d);
				});
			  
			  
			  $ta_vs_region_Multi.on("select2:select", function (e) { 
				  var d = 	$ta_vs_region_Multi.val();
				  $("#ta_vs_region").val(d);
				});
			  $ta_vs_region_Multi.on("select2:unselect", function (e) {
				  $("#ta_vs_region").val(d);
				});
			  
		});
		
		var t_id=$('#t_id').val();  
 		var action = $('#action').val();  
 		
		$(function() {
 			if(action =="add"){
 				$('#st_name').html("  新增台站");  
 				$("#list_loading").hide();
 				$("#page1").show();	
 			}else{
 				


 				editform($('#t_id').val());
 				getAllListData();
 			}
		});
 
		
 		//列表数据加载
		function getAllListData(){
			var method  = new Array("s_list", "o_list", "m_list","d_list1","d_list2","p_list1","p_list2");
			var _html_arr ;
				
				$.post("../DeviceInfo?method=alldata&t_id="+$('#t_id').val(), function(data) {
					if (typeof(data.s_list) == "object"){
						_html_arr = new Array();
						$.each(data.s_list, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.s_name + '</td>');
			                _html_arr.push('<td>' + item.s_a_caliber + '</td>');
			                _html_arr.push('<td>' + item.s_p_content + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(1,'+item.s_id+')" class="btn btn-success btn-xs">编辑</button>');
			               	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'s\','+item.s_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#s_list').html(_html_arr.join(''));
					}
					
					if (typeof(data.o_list) == "object"){
						_html_arr = new Array();
						$.each(data.o_list, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.o_direction + '</td>');
			                _html_arr.push('<td>' + item.o_c_count + '</td>');
			                _html_arr.push('<td>' + item.o_t_capacity + '</td>');
			                _html_arr.push('<td>' + item.o_p_content + '</td>');
			                _html_arr.push('<td>' + item.o_c_free + '</td>');
			                _html_arr.push('<td>' + item.o_s_format + '</td>');
			                _html_arr.push('<td>' + item.o_s_code + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(2,'+item.o_id+')" class="btn btn-success btn-xs">编辑</button>');
			               	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'o\','+item.o_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#o_list').html(_html_arr.join(''));
					}
					if (typeof(data.m_list) == "object"){
						_html_arr = new Array();
						$.each(data.m_list, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.m_name + '</td>');
			                _html_arr.push('<td>' + item.m_t_frequency + '</td>');
			                _html_arr.push('<td>' + item.m_t_capacity + '</td>');
			                _html_arr.push('<td>' + item.m_u_capacity + '</td>');
			                _html_arr.push('<td>' + item.m_t_content + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(3,'+item.m_id+')" class="btn btn-success btn-xs">编辑</button>');
			               	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'m\','+item.m_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#m_list').html(_html_arr.join(''));
					}
					if (typeof(data.d_list1) == "object"){
						_html_arr = new Array();
						$.each(data.d_list1, function(i, item) {
							var yes ;
							( item.d_i_interface ==1)? yes='是' : yes='否' ;
			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.d_frequency + '</td>');
			                _html_arr.push('<td>' + item.d_r_power + '</td>');
			                _html_arr.push('<td>' + item.d_t_power + '</td>');
			                _html_arr.push('<td>' + item.d_program + '</td>');
			                _html_arr.push('<td>' + item.d_m_m + '</td>');
			                _html_arr.push('<td>' + yes+ '</td>');
			                _html_arr.push('<td>' + item.d_f_c_i + '</td>');
			                _html_arr.push('<td>' + item.d_m_b + '</td>');
			                _html_arr.push('<td>' + item.d_multiple + '</td>');
			                _html_arr.push('<td>' + item.d_f_type + '</td>');
			                _html_arr.push('<td>' + item.d_f_polarity + '</td>');
			                _html_arr.push('<td>' + item.d_f_direction + '</td>');
			                _html_arr.push('<td>' + item.d_f_h + '</td>');
			                _html_arr.push('<td>' + item.d_f_c_type + '</td>');
			                _html_arr.push('<td>' + item.d_f_length + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(4,'+item.d_id+')" class="btn btn-success btn-xs">编辑</button>');
			               	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'d\','+item.d_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#d_list1').html(_html_arr.join(''));
					}
					if (typeof(data.d_list2) == "object"){
						_html_arr = new Array();
						$.each(data.d_list2, function(i, item) {
							var yes ;
							( item.d_i_interface ==1)? yes='是' : yes='否' ;
			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.d_frequency + '</td>');
			                _html_arr.push('<td>' + item.d_r_power + '</td>');
			                _html_arr.push('<td>' + item.d_t_power + '</td>');
			                _html_arr.push('<td>' + item.d_program + '</td>');
			                _html_arr.push('<td>' + item.d_m_m + '</td>');
			                _html_arr.push('<td>' +yes + '</td>');
			                _html_arr.push('<td>' + item.d_f_c_i + '</td>');
			                _html_arr.push('<td>' + item.d_m_b + '</td>');
			                _html_arr.push('<td>' + item.d_multiple + '</td>');
			                _html_arr.push('<td>' + item.d_f_type + '</td>');
			                _html_arr.push('<td>' + item.d_f_polarity + '</td>');
			                _html_arr.push('<td>' + item.d_f_direction + '</td>');
			                _html_arr.push('<td>' + item.d_f_h + '</td>');
			                _html_arr.push('<td>' + item.d_f_c_type + '</td>');
			                _html_arr.push('<td>' + item.d_f_length + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(4,'+item.d_id+')" class="btn btn-success btn-xs">编辑</button>');
			            	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'d\','+item.d_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#d_list2').html(_html_arr.join(''));
					}
					
					
					if (typeof(data.as_list) == "object"){
						_html_arr = new Array();
						$.each(data.as_list, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.as_type + '</td>');
			                _html_arr.push('<td>' + item.as_hieght + '</td>');
			                _html_arr.push('<td>' + item.as_frequency + '</td>');
			                _html_arr.push('<td>' + item.as_model + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(6,'+item.as_id+')" class="btn btn-success btn-xs">编辑</button>');
			            	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'as\','+item.as_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#as_list').html(_html_arr.join(''));
					}
					
					
					if (typeof(data.power_list1) == "object"){
						_html_arr = new Array();
						$.each(data.power_list1, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.power_capacity + '</td>');
			                _html_arr.push('<td>' + item.power_quantity + '</td>');
			                _html_arr.push('<td>' + item.power_load + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(7,'+item.power_id+')" class="btn btn-success btn-xs">编辑</button>');
			            	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'power\','+item.power_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#power_list1').html(_html_arr.join(''));
					}
					
					if (typeof(data.power_list2) == "object"){
						_html_arr = new Array();
						$.each(data.power_list2, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.power_capacity + '</td>');
			                _html_arr.push('<td>' + item.power_quantity + '</td>');
			                _html_arr.push('<td>' + item.power_load + '</td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(8,'+item.power_id+')" class="btn btn-success btn-xs">编辑</button>');
			            	_html_arr.push('&nbsp  <button type="button" onclick="del_info(\'power\','+item.power_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#power_list2').html(_html_arr.join(''));
					}
					
					
				}, "json");
				
 
			
		}
		
 		
 		function zouxian(id,id1,id2){
  
 			if($("#"+id).val().length ==0){
 				$("#"+id1).val(0);
 				$("#"+id2).val(0);
 			}
 		}
			
		initLoading();
	</script>
</body>

</html>
<%} %>