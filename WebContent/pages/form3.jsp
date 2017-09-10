<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form3</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from3">
                    <fieldset>
                        <legend>节目传送机房</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >位置</label>
                          <div class="col-sm-2">
                             <input class="form-control"  id="c_p_layers" name ="c_p_layers"  type="number" placeholder="层数"/>  
                          </div>
                           <div class="col-sm-1"  style="text-align:center">
                            <spna style="margin:5px;display:inline-block"> /</spna>
                          </div>
                          <div class="col-sm-2">
                             <input class="form-control"  id="c_c_layers" name ="c_c_layers"  type="number" placeholder="总层数"/>
                          </div>
                          
                       </div>
                       <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="p_t_capacity">卫星接收</label>
                          <div class="col-sm-10">
                              <div class="panel panel-default">
                        		<div class="panel-heading" style='height:42px;'>
                            		<span class=""> </span>
                                	<div class="navbar-right" style='margin-top:-5px;margin-right:10px;'>
 										<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(1,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      								</div>
                        		</div>
                         
                        		<div class="panel-body">
 						 			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
										<thead>
											<tr>
											<th width="50px">序号</th>
											<th >卫星名称</th>
											<th>天线口径</th>
											<th>节目内容</th>
											<th width="100px">操作</th>
											</tr>
										</thead>
									<tbody id="s_list">

									</tbody>
							</table>
 						 				
								</div>
							</div>
                              
                          </div>
 
                       </div>
       
                       <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="p_t_capacity">光缆传输</label>
                          <div class="col-sm-10">
                                <div class="panel panel-default">
                        		<div class="panel-heading" style='height:42px;'>
                            		<span class=""> </span>
                                	<div class="navbar-right" style='margin-top:-5px;margin-right:10px;'>
 										<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(2,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      								</div>
                        		</div>
                         
                        		<div class="panel-body">
 						 			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
										<thead>
											<tr>
											<th width="50px">序号</th>
											<th >传输方向</th>
											<th>总芯数</th>
											<th>传输容量</th>
											<th>传输节目内容</th>
											<th>空余芯数</th>
											<th>信号格式</th>
											<th>信号编码格式</th>
											<th width="100px">操作</th>
											</tr>
										</thead>
									<tbody id="o_list">

									</tbody>
									</table>
								</div>
							</div>
                          </div>
                       </div>
                        <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="p_t_capacity">微波传输</label>
                          <div class="col-sm-10">
                             <div class="panel panel-default">
                        		<div class="panel-heading" style='height:42px;'>
                            		<span class=""> </span>
                                	<div class="navbar-right" style='margin-top:-5px;margin-right:10px;'>
 										<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(3,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      								</div>
                        		</div>
                         
                        		<div class="panel-body">
 						 				 						 			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
										<thead>
											<tr>
											<th width="50px">序号</th>
											<th >台站名称</th>
											<th>传输频率</th>
											<th>传输容量</th>
											<th>已用容量</th>
											<th>传输节目内容</th>

											<th width="100px">操作</th>
											</tr>
										</thead>
									<tbody id="m_list">

									</tbody>
									</table>
								</div>
							</div>
                          </div>
 
                       </div>
                       
                      	</fieldset>
                      	
                      	<fieldset>
                        <legend>走线</legend>
                        
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_l_type" >走线架</label>
                             <div class="col-sm-2">
                             <select id="c_l_type" name ="c_l_type" class="form-control  zxlx"  optional="optional" onchange="zouxian('c_l_type','c_l_v1','c_l_v2')">
                             	<option></option>
								<option>走线架</option>

							</select>
                           </div>
                             
                           <label class="col-sm-2 control-label" for="c_l_v1" >距地高度(米)</label>
                             <div class="col-sm-2">
 								<input class="form-control  zxlx_v"  id="c_l_v1"   name = "c_l_v1" type="number" placeholder="米"   optional="optional"/>
                    		 </div>
                    		 
                    		<label class="col-sm-2 control-label" for="c_l_v2" >宽度(米)</label>
                             <div class="col-sm-2">
 								<input class="form-control zxlx_v"  id="c_l_v2"   name="c_l_v2" type="number" placeholder="米"  optional="optional"/>
                    		 </div>
                      </div>      
                      
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_l_type_a" >活动地板</label>
                             <div class="col-sm-2">
                             <select id="c_l_type_a" name ="c_l_type_a" class="form-control zxlx" optional="optional">
								<option></option>
								<option>活动地板</option>
							</select>
                             </div>

                      </div>  

                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_l_type_b" >地沟</label>
                             <div class="col-sm-2">
                             <select id="c_l_type_b" name ="c_l_type_b" class="form-control" optional="optional"  onchange="zouxian('c_l_type_b','c_l_v1_3','c_l_v2_3')">
								<option></option>
								<option>地沟</option>
							</select>
                             </div>
                           <label class="col-sm-2 control-label" for="c_l_v1_3" >沟深(米)</label>
                             <div class="col-sm-2">
 								<input class="form-control zxlx_v"  id="c_l_v1_3"  name = "c_l_v1_3" type="number" placeholder="米" optional="optional"/>
                    		 </div>
                    		 
                    		<label class="col-sm-2 control-label" for="c_l_v2_3" >沟宽(米)</label>
                             <div class="col-sm-2">
 								<input class="form-control zxlx_v"  id="c_l_v2_3"  name="c_l_v2_3" type="number" placeholder="米" optional="optional"/>
                    		 </div>
                      </div>  
                      
                      </fieldset>
                      	
                      	<fieldset>
                        <legend>工艺接地</legend> 
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_g_type" >接地类型 </label>
                            <div class="col-sm-4">
                             <select id="c_g_type" name ="c_g_type" class="form-control">
								<option>接地排</option>
								<option>接地极</option>
								<option>地网</option>
							</select>
                             </div>
                             
                             <label class="col-sm-2 control-label" for="c_g_v" >接地电阻值</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" c_g_v" name="c_g_v" type="number" placeholder="欧姆（Ω）"/>
                    		 </div>
                             
                       	</div>
 
                       
                       </fieldset>
                      	
                      <fieldset>
                       <legend>空调通风</legend>
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_as_type"  >空调形式 </label>
                             <div class="col-sm-4">
								<select id="c_as_type" name ="c_as_type" class="form-control">
								<option>柜式及分体</option>
								<option>VRV空调系统</option>
								<option>机房专用空调</option>
								</select>
                            </div>
                       </div>   
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_as_cool"  >制冷量 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" c_as_cool" name="c_as_cool"  type="number" placeholder="kW"/>
								</select> 
                             </div>
                           <label class="col-sm-2 control-label" for="c_as_power"  >功率</label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" c_as_power" name="c_as_power"  type="number" placeholder="kW"/>
                             </div>
                       
                       </div>  
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_a_type"  >通风 </label>
                             <div class="col-sm-4">
								<select id="c_a_type" name ="c_a_type" class="form-control">
								<option>自然通风</option>
								<option>机械通风</option>
								</select> 
                             </div>
                           <label class="col-sm-2 control-label" for="c_a_volume"  >风量</label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" c_a_volume" name="c_a_volume"  type="number" placeholder="kW"/>
                             </div>
                       
                       </div>   
                     
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_a_power"  >功率 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" c_a_power" name="c_a_power"  type="number" placeholder="kW"/>
                             </div>
                           <label class="col-sm-2 control-label" for="c_a_pressure"  >风压 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" c_a_pressure" name="c_a_pressure"  type="number" placeholder="帕"/>
                             </div>
                       
                       </div>  
                         

                    </fieldset>
                    
 					<fieldset>
                        <legend>附件</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="p_primary" >平面图绘制注意事项</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
                                
							1.节传新增两部机柜，绘制所在机房平面，标注可放置位置；<br/>
							2.绘制监控室，监控室内新增3块大屏，标注出位置。<br/>
							3.（优先）如卫星天线在场区：测量绘制新增天线距新增节传设备所在机房的距离，至少绘制天线周围的部分场区图（包括前方建筑、墙、地形特征、高度）<br/>
							4.如卫星天线在屋顶：测量并绘制新增天线所在屋面的整体平面，记录天线位置距离，确定新增卫星天线位置。<br/>
							5.如新建微波，需知道微波两点经纬度、海拔，对方微波天线挂高，本台站微波天线可挂在何处（如塔上那一段高度）<br/>
							6.卫星天线及微波天线馈线如何送往节传设备机柜，沟洞、馈线走向要勾画示意图或至少文字描述清楚。包括：节传设备所在机房光缆如何进来、塔上微波馈线是否跟发射机馈线洞共用，在什么位置标明。<br/>
							7.机房现有接地极的位置，是否需要新设计。<br/>
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(4)">上传</button>
								<br>
								<div id="file_box4">
								</div>
                            </div>
 							
                          </div>
 
                       </div>
                       
   
                       
                       
                       </fieldset>
                       
                        <fieldset>
                         <legend>备注</legend>
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_purpose" >备注</label>
                             <div class="col-sm-10">
 									<textarea class="form-control" rows="4" id="t_remarks_3"  name="t_remarks_3"   optional=""></textarea>
                             </div>

                       </div>   

                    </fieldset>
                </form>
 
</body>

</html>
