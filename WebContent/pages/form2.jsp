<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form2</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from2">
                    <fieldset>
                        <legend>供配电</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="p_primary" >外电主路电压等级（kV）</label>
                          <div class="col-sm-4">
                             <input class="form-control"  id="p_primary" name ="p_primary"  type="number" placeholder="kV"/>
                          </div>
                          <label class="col-sm-2 control-label"  for="p_standby">外电辅路电压等级（kV）</label>
                          <div class="col-sm-4">
 							<input class="form-control"  id="p_standby" name ="p_standby"  type="number" placeholder="kV"/> 
                          </div>
                       </div>
                       <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="p_t_capacity">变压器 容量（kVA）</label>
                          <div class="col-sm-4">
                             <input class="form-control"  id="p_t_capacity" name="p_t_capacity"  type="number" placeholder="kVA"/>
                          </div>
                          
                          <label class="col-sm-2 control-label"  for="p_t_quantity">变压器数量</label>
                          <div class="col-sm-4">
                             <input class="form-control"  id="p_t_quantity"  name ="p_t_quantity" type="number" placeholder=""/>
                          </div>
                          </div>
       
                       
 
                       
                       
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="p_t_load" >变压器实际负荷（kVA） </label>
                             <div class="col-sm-4">
                             <input class="form-control"  id=" p_t_load"  name ="p_t_load" type="number" placeholder="kVA"/>
                             </div>

                           <label class="col-sm-2 control-label" for="p_a_power">柴油发电机输出功率（kVA）</label>
                             <div class="col-sm-4">
                             <input class="form-control"  id=" p_a_power" name="p_a_power" type="number" placeholder="kVA"/>
                             </div>
                       </div>      

                       
                         <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="p_t_capacity">PUS</label>
                          <div class="col-sm-10">
                              <div class="panel panel-default">
                        		<div class="panel-heading" style='height:42px;'>
                            		<span class=""> </span>
                                	<div class="navbar-right" style='margin-top:-5px;margin-right:10px;'>
 										<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(7,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      								</div>
                        		</div>
                         
                        		<div class="panel-body">
 						 			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
										<thead>
											<tr>
											<th width="50px">序号</th>
											<th>UPS容量 (kVA)</th>
											<th>UPS数量</th>
											<th>UPS实际负荷 (kVA)</th>
											<th width="100px">操作</th>
											</tr>
										</thead>
									<tbody id="power_list1">

									</tbody>
									</table>
 						 				
								</div>
							</div>
                          </div>
                       </div>
                       
                       
                       
                         <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="p_t_capacity">稳压器</label>
                          <div class="col-sm-10">
                              <div class="panel panel-default">
                        		<div class="panel-heading" style='height:42px;'>
                            		<span class=""> </span>
                                	<div class="navbar-right" style='margin-top:-5px;margin-right:10px;'>
 										<button type="button" class="btn btn-info   btn-sm" onclick="openwindow(8,0)"> <span class='fa  fa-plus  ' style='color:#ffffff'></span>  </button>
      								</div>
                        		</div>
                         
                        		<div class="panel-body">
 						 			<table class="table table-striped table-bordered table-hover" id="dataTables-example">
										<thead>
											<tr>
											<th width="50px">序号</th>
											<th>稳压器容量 (kVA)</th>
											<th>稳压器数量</th>
											<th>稳压器实际负荷 (kVA)</th>
											<th width="100px">操作</th>
											</tr>
										</thead>
									<tbody id="power_list2">

									</tbody>
									</table>
 						 				
								</div>
							</div>
                          </div>
                       </div>
                       
                       <!--  
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="p_u_capacity" >UPS容量（kVA）</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" p_u_capacity" name = "p_u_capacity" type="number" placeholder="kVA"/>
                    		 </div>
                    		 
                    		<label class="col-sm-2 control-label" for="p_u_quantity" >UPS数量</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" p_u_quantity" name="p_u_quantity" type="number" placeholder=""/>
                    		 </div>
                      </div>      
                       
                       
                       
 
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="p_u_load" >UPS实际负荷 （kVA）</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" p_u_load" name="p_u_load" type="number" placeholder="kVA"/>
                             </div>

                           <label class="col-sm-2 control-label" for="p_m_capacity">稳压器 容量 （kVA）</label>
                             <div class="col-sm-4">
                             <input class="form-control"  id=" p_m_capacity" name = "p_m_capacity" type="number" placeholder="kVA"/>
                             </div>
                       </div>   
                       
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="p_m_quantity"  >稳压器 数量 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" p_m_quantity"  name="p_m_quantity" type="number" placeholder=""/>
                             </div>

                           <label class="col-sm-2 control-label" for="p_m_load">稳压器 实际负荷（kVA）</label>
                             <div class="col-sm-4">
                             <input class="form-control"  id=" p_m_load"  name="p_m_load" type="number" placeholder="kVA"/>
                             </div>
                       </div>   
                       -->
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="p_resistance"  >场区接地电阻值<br>(欧姆 Ω) </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" p_resistance" name="p_resistance"  type="number" placeholder="欧姆（Ω）"/>
                             </div>

                       
                       </div>   
                       
                       
                    </fieldset>
                    
 					<fieldset>
                        <legend>附件</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="p_primary" >低压配电系统图</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
                               <strong>三种附件上传顺序</strong> <br/>
                                1.市电  - 稳压器 - UPS - 发射机 <br/>
								2.市电  - UPS  - 稳压器  - 发射机 <br/>
								3.市电  - 发射机<br/>
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(1)">上传</button>
								<br/>
								<div id="file_box1">
								</div>
                            </div>
 							
                          </div>
 
                       </div>
                       
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="p_primary" >低压配电柜机房内配电箱</label>
                          <div class="col-sm-10">
                          
                            <div class="alert alert-warning">
                               <strong>上传事项</strong> <br/>
                                	配电箱系统图，有，拍系统图，无，拍配电箱，全图，进出开关大小<br/>
                                <button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(2)">上传</button>
                            </div>
                            
 							<br/>
								<div id="file_box2">
								</div>
                          </div>
 
                       </div>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="p_primary" >防雷接地检测报告</label>
                          <div class="col-sm-10">
                           <div class="alert alert-warning">
 							<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(3)">上传</button>
 							 	<br/>
								<div id="file_box3">
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
 									<textarea class="form-control" rows="4" id="t_remarks_2"  name="t_remarks_2"  optional=""></textarea>
                             </div>

                       </div>   

                    </fieldset>
                </form>
 
</body>

</html>
