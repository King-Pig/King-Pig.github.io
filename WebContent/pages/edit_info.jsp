<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
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
<link href="../css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                            <a href="#"><i class="glyphicon glyphicon-pawn"></i><span id="st_name"></spna> </span><span class="fa arrow"></span></a>
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
          <%if ( !"add".equals(action) ){ %>
          <ul class="dropdown-menu"  id="t_version">
            <li><a href="#">V3</a></li>
            <li><a href="#">V2</a></li>
            <li><a href="#">V1</a></li>
          </ul>
             <%} %>
        </li>
        <%if ( !"add".equals(action) ){ %>
           <li><a href="#"><span class="fa fa-copy" ></span> 复制</a></li>
           <%}%>
           <li><a href="#"><span class="fa fa-trash-o" ></span> 删除</a></li>
 
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
 								 <button type="button" class="btn btn-info   btn-sm" onclick=""> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
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
									<th >主/备</th>
									<th >多工情况</th>
									<th >天馈线</th>
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
									<button type="button" class="btn btn-info   btn-sm" onclick=""> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
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
									<th >主/备</th>
									<th >多工情况</th>
									<th >天馈线</th>
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
 										<button type="button" class="btn btn-info   btn-sm" onclick=""> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
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
								<tbody id="as_datalist">

								</tbody>
							</table>

						</div>
                        <div class="panel-footer" style="text-align:center" >
                            <button type="button" class="btn btn-success" onclick="save(10,0)">完成</button>
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


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">  取消  </button>
        <button type="button" class="btn btn-success"   onclick="savelistinfo()" >  保存  </button>

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

	<script src="../js/bootstrap-datetimepicker.min.js"></script>
	<script src="../js/populateForm.js"></script>
	
	<!-- Custom Theme JavaScript -->
	<script src="../dist/js/sb-admin-2.js"></script>
		<script type="text/javascript"  src="../js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
	<script>

	
	var save_list_info_num;
	var save_list_info_type;
	function openwindow(num,id){
		$(".list_info_form").hide();
		$("#list_info_form"+num).show();	
		save_list_info_num = num;
		var nowid =  $("#form_tag"+save_list_info_num).val()+"_id";
		
		if(id == 0){
			// 新增
			save_list_info_type = 'add';
			$("#"+nowid).val(0);
		}else{
			//编辑
			save_list_info_type = 'update';
			$("#"+nowid).val(id);
		}
		$('#list_modal').modal({
		    keyboard: true,
		    show:true
		});
	}
	
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
	
	function del_info(type,id){
		var mt = type+"_del";
		$.post("../DeviceInfo?method="+mt+"&id="+id, function(data) {
			if(data.result>0){
				getAllListData();//全部刷新
			}
	         		
		}, "json");
		
		
	}
	
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
	
	function save(unm,next){
		var i = formValuesCheck("info_from"+unm);
		if( i == 0){
			//验证通过
 			var id = $("#t_id").val();
			var from_data = $("#info_from"+unm).serialize();
			$.post("../StationInfo?method=update&t_id="+id, from_data, function(data) {
		         	if(next == 1){
		         		nextpage(unm);
					}
		         		
			}, "json");
			
		}
	}
	
	function editform(id){
		
		$.post("../StationInfo",{'method':'queryinfo','t_id':id},function(result){
					$('#st_name').html(result.t_name);  
 					$("#info_from1").populateForm(result);
 					$("#info_from2").populateForm(result);
 					$("#info_from3").populateForm(result);
 					$("#info_from4").populateForm(result);
 					$("#info_from7").populateForm(result);
 					$("#info_from8").populateForm(result);
 					$("#info_from9").populateForm(result);
 					$("#list_loading").hide();
 					$("#page1").show();	
			  }, "json");
	}


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
 	    
 	    return r;
 	  }
 	 
 	
		$(function() {
			  $(".form_datetime").datetimepicker({
				  locale:'bootstrap-datetimepicker.zh-CN',
				  format: 'yyyy-mm',
				  minView:'month',
				  autoclose:true
				  });
		});
		
		var t_id=$('#t_id').val();  
 		var action = $('#action').val();  
 		
		$(function() {
 			if(action =="add"){
 				$('#st_name').html("  新增台站");  
 			}else{
 				


 				editform($('#t_id').val());
 				getAllListData();
 			}
		});
 
		
 
		function getAllListData(){
			var method  = new Array("s_list", "o_list", "m_list","d_list1","d_list2");
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

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.d_frequency + '</td>');
			                _html_arr.push('<td>' + item.d_r_power + '</td>');
			                _html_arr.push('<td>' + item.d_t_power + '</td>');
			                _html_arr.push('<td>' + item.d_program + '</td>');
			                _html_arr.push('<td>' + item.d_m_m + '</td>');
			                _html_arr.push('<td>' + item.d_i_interface + '</td>');
			                _html_arr.push('<td>' + item.d_m_b + '</td>');
			                _html_arr.push('<td>' + item.d_multiple + '</td>');
			                _html_arr.push('<td></td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(4,'+item.d_id+')" class="btn btn-success btn-xs">编辑</button>');
			               	_html_arr.push('&nbsp  <button type="button" onclick="del_info(4,'+item.d_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#d_list1').html(_html_arr.join(''));
					}
					if (typeof(data.d_list2) == "object"){
						_html_arr = new Array();
						$.each(data.d_list2, function(i, item) {

			                _html_arr.push('<tr class="">');
			                _html_arr.push('<td>' + (i+1)+ '</td>');
			                _html_arr.push('<td>' + item.d_frequency + '</td>');
			                _html_arr.push('<td>' + item.d_r_power + '</td>');
			                _html_arr.push('<td>' + item.d_t_power + '</td>');
			                _html_arr.push('<td>' + item.d_program + '</td>');
			                _html_arr.push('<td>' + item.d_m_m + '</td>');
			                _html_arr.push('<td>' + item.d_i_interface + '</td>');
			                _html_arr.push('<td>' + item.d_m_b + '</td>');
			                _html_arr.push('<td>' + item.d_multiple + '</td>');
			                _html_arr.push('<td></td>');
			                _html_arr.push('<td style="text-align: center ;">');
			               	_html_arr.push('<button type="button" onclick="openwindow(4'+item.d_id+')" class="btn btn-success btn-xs">编辑</button>');
			            	_html_arr.push('&nbsp  <button type="button" onclick="del_info(4,'+item.d_id+')" class="btn btn-success btn-xs">删除</button>');
			                _html_arr.push('</td>');
			                _html_arr.push('</tr>');
		                });
						$('#d_list2').html(_html_arr.join(''));
					}
					
				}, "json");
				
 
			
		}
		
		
		
	</script>
</body>

</html>
