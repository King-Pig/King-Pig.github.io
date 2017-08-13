<%@ page language="java"  import="java.util.*"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  >

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

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">电视台站管理</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                       
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> 新增台站
                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="#">
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 导出报告
                                </div>
                            </a>
                        </li>

                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i>密码修改</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>用户管理</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> 退出</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav"  id="side-menu"   >
                    
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control"   style="margin: 0 auto;" data-provide="typeahead" data-items="4"  data-provide="typeahead"   placeholder="台站名称...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
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
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
 
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
		function showcity(){
			$.post("../StationInfo", { "method": "city_count" },
					   function(data){
					     console.log(data); //  2pm
					     var html = "";
					     $.each(data, function(i, item) {
					    	 html += "<li  class='' id='city_li"+i+"'  onclick='city_station("+i+","+item.num+",\""+item.city+"\")'   ><a href='#' ><i class='fa fa-map-marker fa-fw'></i>"+item.city;
					    	if(item.num > 0)    	 html+= "  &nbsp; &nbsp;<span class='badge '>"+item.num+"</span>";
					    	 html +="<span class='fa arrow'></span></a> <ul class='nav nav-second-level' id='city"+i+"' ></ul></li>";
					     });
					     
					    // alert( $("#side-menu").html);
					     $("#side-menu").append(html);
					     
					   }, "json");
			
			
		}
		
		function city_station(id,num,city){
 
			if($("#city_li"+id).attr('class') == '' ){ //展开
				if(num != 0){
					var cityid = "#city"+id;
					if($(cityid).html().length == 0){
						$("#city"+id).attr("class", "nav nav-second-level collapsing"); 
						$.post("../StationInfo", { 'method':'querylist','page':'1','pageSize':'100','orderby':'t_name','t_city':city },
								   function(data){
								     console.log(data); //  2pm
								     var html = "";
								     $.each(data.list, function(i, item) {
								    	 html += "<li><a href='#' onclick='openstation("+item.t_id+")'>"+item.t_name+"</a></li>";
								     });
								     $(cityid).html(html);
								     
								     $("#city_li"+id).attr("class", "active"); 
								     $("#city"+id).attr("style", ""); 
								     $("#city"+id).attr("class", "nav nav-second-level collapse in"); 
								     $("#city"+id).attr("aria-expanded", "true"); 
								     
								   }, "json");
						
					}else{
					     
					     $("#city"+id).attr("class", "nav nav-second-level collapse in"); 
					     $("#city"+id).attr("aria-expanded", "true"); 
					     $("#city"+id).attr("style", ""); 
					     $("#city_li"+id).attr("class", "active"); 

					}
				}

			} else{
				//收缩
				$("#city_li"+id).attr("class", ""); 
				$("#city"+id).attr("style", "height: 0px;"); 
				$("#city"+id).attr("class", "nav nav-second-level collapse"); 
				 $("#city"+id).removeAttr("aria-expanded");
				
				
			}

		}
		
		function openstation(id){
			window.location.href="";
		}
		
		$(function(){
			showcity();
		});
	</script>
</body>

</html>
