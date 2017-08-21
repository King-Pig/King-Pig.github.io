<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form7</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from7">
                    <fieldset>
                        <legend>控制室</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >位置</label>
                          <div class="col-sm-2">
                             <input class="form-control"  id="cm_p_layers" name ="cm_p_layers"  type="number" placeholder="层数"/>  
                          </div>
                          <div class="col-sm-2">
                             <input class="form-control"  id="cm_c_layers" name ="cm_c_layers"  type="number" placeholder="总层数"/>
                          </div>
                          
                       </div>
 

                      	</fieldset>
                      	
                      	<fieldset>
                        <legend>走线</legend>
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_l_type" >走线类型</label>
                             <div class="col-sm-4">
                             <select id="cm_l_type" name ="cm_l_type" class="form-control">
								<option>走线架</option>
								<option>活动地板</option>
								<option>地沟</option>
							</select>
                             </div>

                       </div>      

                      
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_l_v1" >距地高度/沟深</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" cm_l_v1" name = "cm_l_v1" type="number" placeholder="米"/>
                    		 </div>
                    		 
                    		<label class="col-sm-2 control-label" for="cm_l_v2" >宽度/沟宽</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" cm_l_v2" name="cm_l_v2" type="number" placeholder="米"/>
                    		 </div>
                      </div>      
                      </fieldset>
                      	
                      	<fieldset>
                        <legend>工艺接地</legend> 
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_g_type" >接地类型 </label>
                            <div class="col-sm-4">
                             <select id="cm_g_type" name ="cm_g_type" class="form-control">
								<option>接地排</option>
								<option>接地极</option>
								<option>地网</option>
							</select>
                             </div>
                             
                             <label class="col-sm-2 control-label" for="cm_g_v" >接地电阻值</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id=" cm_g_v" name="cm_g_v" type="number" placeholder="欧姆（Ω）"/>
                    		 </div>
                             
                       	</div>
 
                       
                       </fieldset>
                      	
                      <fieldset>
                       <legend>空调通风</legend>
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_as_type"  >空调形式 </label>
                             <div class="col-sm-4">
								<select id="cm_as_type" name ="cm_as_type" class="form-control">
								<option>柜式及分体</option>
								<option>VRV空调系统</option>
								<option>机房专用空调</option>
								</select>
                            </div>
                       </div>   
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_as_cool"  >制冷量 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" cm_as_cool" name="cm_as_cool"  type="number" placeholder="kW"/>
								</select> 
                             </div>
                           <label class="col-sm-2 control-label" for="cm_as_power"  >功率</label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" cm_as_power" name="cm_as_power"  type="number" placeholder="kW"/>
                             </div>
                       
                       </div>  
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_a_type"  >通风 </label>
                             <div class="col-sm-4">
								<select id="cm_a_type" name ="cm_a_type" class="form-control">
								<option>自然通风</option>
								<option>机械通风</option>
								</select> 
                             </div>
                           <label class="col-sm-2 control-label" for="cm_a_volume"  >风量</label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" cm_a_volume" name="cm_a_volume"  type="number" placeholder="kW"/>
                             </div>
                       
                       </div>   
                     
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="cm_a_power"  >功率 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" cm_a_power" name="cm_a_power"  type="number" placeholder="kW"/>
                             </div>
                           <label class="col-sm-2 control-label" for="cm_a_pressure"  >风压 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id=" cm_a_pressure" name="cm_a_pressure"  type="number" placeholder="帕"/>
                             </div>
                       
                       </div>  
                         

                    </fieldset>
                    
 					<fieldset>
                        <legend>附件</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >平面图</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
                           		 应包括控制室方位、机房尺寸、现有设备布置、预留设备位置、线缆墙洞、桥架（地沟）线缆路由、接地极（排）位置；<br/>
                           		 控制室和发射机房、节传机房的相对关系；<br/>
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile()">上传</button>
                            </div>
 							
                          </div>
 
                       </div>
                       
   
                       
                       
                       </fieldset>
                </form>
 
</body>

</html>
