<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form4</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from4">
                    <fieldset>
                        <legend>发射机房</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >位置</label>
                          <div class="col-sm-2">
                             <input class="form-control"  id="t_p_layers" name ="t_p_layers"  type="number" placeholder="层数"/> 
                          </div>
                          <div class="col-sm-2">
                             <input class="form-control"  id="t_c_layers" name ="t_c_layers"  type="number" placeholder="总层数"/>
                          </div>
                          
                       </div>
 
       
                       <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="t_d_type">现有发射机</label>
                          <div class="col-sm-4">
                             <select id="t_d_type" name ="t_d_type" class="form-control">
								<option>模拟电视发射机</option>
								<option>数字电视发射机</option>
								<option>调频发射机</option>
							</select>
                          </div>
 
                          <label class="col-sm-2 control-label"  for="t_d_v">数量</label>
                          <div class="col-sm-4">
                              <input class="form-control"  id=" t_d_v" name = "t_d_v" type="number" placeholder=""/>
                          </div>
 
                       </div>
 
                       
                      	</fieldset>
                      	
                      	<fieldset>
                        <legend>走线</legend>
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_l_type" >走线类型</label>
                             <div class="col-sm-4">
                             <select id="t_l_type" name ="t_l_type" class="form-control">
								<option>走线架</option>
								<option>活动地板</option>
								<option>地沟</option>
							</select>
                             </div>

                       </div>      

                      
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="c_l_v1" >距地高度/沟深</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" t_l_v1" name = "t_l_v1" type="number" placeholder="米"/>
                    		 </div>
                    		 
                    		<label class="col-sm-2 control-label" for="t_l_v2" >宽度/沟宽</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" t_l_v2" name="t_l_v2" type="number" placeholder="米"/>
                    		 </div>
                      </div>      
                      </fieldset>
                      	
                      	<fieldset>
                        <legend>工艺接地</legend> 
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_g_type" >接地类型 </label>
                            <div class="col-sm-4">
                             <select id="t_g_type" name ="t_g_type" class="form-control">
								<option>接地排</option>
								<option>接地极</option>
								<option>地网</option>
							</select>
                             </div>
                             
                             <label class="col-sm-2 control-label" for="t_g_v" >接地电阻值</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" t_g_v" name="t_g_v" type="number" placeholder="欧姆（Ω）"/>
                    		 </div>
                             
                       	</div>
 
                       
                       </fieldset>
                      	
                      <fieldset>
                       <legend>空调通风</legend>
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_as_type"  >空调形式 </label>
                             <div class="col-sm-4">
								<select id="t_as_type" name ="t_as_type" class="form-control">
								<option>柜式及分体</option>
								<option>VRV空调系统</option>
								<option>机房专用空调</option>
								</select>
                            </div>
                       </div>   
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_as_cool"  >制冷量 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" t_as_cool" name="t_as_cool"  type="number" placeholder="kW"/>
								</select> 
                             </div>
                           <label class="col-sm-2 control-label" for="t_as_power"  >功率</label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" t_as_power" name="t_as_power"  type="number" placeholder="kW"/>
                             </div>
                       
                       </div>  
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_a_type"  >通风 </label>
                             <div class="col-sm-4">
								<select id="t_a_type" name ="t_a_type" class="form-control">
								<option>自然通风</option>
								<option>机械通风</option>
								</select> 
                             </div>
                           <label class="col-sm-2 control-label" for="t_a_volume"  >风量</label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" t_a_volume" name="t_a_volume"  type="number" placeholder="kW"/>
                             </div>
                       
                       </div>   
                     
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_a_power"  >功率 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" t_a_power" name="t_a_power"  type="number" placeholder="kW"/>
                             </div>
                           <label class="col-sm-2 control-label" for="t_a_pressure"  >风压 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" t_a_pressure" name="t_a_pressure"  type="number" placeholder="帕"/>
                             </div>
                       
                       </div>  
                         

                    </fieldset>
                    
 					<fieldset>
                        <legend>附件</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >机房平面图</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
                               	应包括机房方位、机房尺寸、现有设备布置、预留设备位置、馈线洞口、桥架（地沟）线缆路由、接地极（排）位置；<br/>
								机房和铁塔之间的相对位置和距离，线缆路由走向等<br/>
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(5)">上传</button>
								<br/>
								<div id="file_box5">
								</div>
                            </div>
 							
                          </div>
 
                       </div>
                       
   
                       
                       
                       </fieldset>
                </form>
 
</body>

</html>
