<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form9</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from9">
                    <fieldset>
                        <legend>塔桅</legend>
                        <div class="form-group">
                          <label class="col-sm-2 control-label" for="tm_longitude">纬度 </label>
                             <div class="col-sm-2">
                             <input class="form-control"  id="tm_longitude1" name="tm_longitude1" type="number"  placeholder="度"/>
                             </div>
                              <div class="col-sm-2">
                             <input class="form-control"  id="tm_longitude2" name="tm_longitude2"  type="number"  placeholder="分" />
                             </div>
                             <div class="col-sm-2">
                             <input class="form-control"  id="tm_longitude3" name="tm_longitude3"  type="number"  placeholder="秒"/>
                          </div>
                          

                       </div>
                       
                         <div class="form-group">
                          <label class="col-sm-2 control-label" for="tm_latitude">经度 </label>
                             <div class="col-sm-2">
                             <input class="form-control"  id="tm_latitude1" name="tm_latitude1" type="number" placeholder="度"/>
                             </div>
                              <div class="col-sm-2">
                             <input class="form-control"  id="tm_latitude2" name="tm_latitude2" type="number" placeholder="分" />
                             </div>
                             <div class="col-sm-2">
                             <input class="form-control"  id="tm_latitude3" name="tm_latitude3"  type="number" placeholder="秒"/>
                          </div>
                       </div>
 

 
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="tm_altitude" >海拔高度</label>
                            <div class="col-sm-4">
 								<input class="form-control"  id="tm_altitude" name = "tm_altitude" type="number" placeholder="米"/>
                    		 </div>
                    		 
                    		 <label class="col-sm-2 control-label" for="tm_position" >位置</label>
                             <div class="col-sm-4">
                             <select id="tm_position"  name ="tm_position"  class="form-control">
								<option>山顶</option>
								<option>山坡</option>
 								<option>城镇</option>
							</select>
                             </div>

                       </div>      

                      
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="tm_ice" >有无裹冰现象</label>
                             <div class="col-sm-4">
 								<select id="tm_ice" name ="tm_ice" class="form-control">
								<option value ="1" >是</option>
								<option value ="0" >否</option>
 
							</select> 
                    		 </div>
                    		 
                      </div>      
 
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="tm_height" >铁塔高度 </label>
                            <div class="col-sm-4">
								<input class="form-control"  id="tm_height" name = "tm_height" type="number" placeholder="米"/>
							 
                             </div>
                             
                             <label class="col-sm-2 control-label" for="tm_hemline" >底部根开（边到边）</label>
                             <div class="col-sm-4">
 								<input class="form-control"  id="tm_hemline" name="tm_hemline" type="number" placeholder="米"/>
                    		 </div>
                             
                       	</div>
 
 
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="tm_style"  >结构形式 </label>
                             <div class="col-sm-2">
								<select id="tm_style" name ="tm_style" class="form-control">
								<option>自立塔 </option>
								<option>钢管</option>
								<option>角钢</option>
								<option>拉线塔</option>
								</select>
                            </div>
                            
                            <div class="col-sm-2">
                            	<input class="form-control"  id="tm_style_v" name="tm_style_v" type="number" placeholder="边数"/>
                            </div>
                            
                            
                            
                       </div>   
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="tm_build_unit"  >铁塔生产单位 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id="tm_build_unit" name="tm_build_unit"  type="text" placeholder=""/>
								 
                             </div>
                           <label class="col-sm-2 control-label" for="tm_design_unit"  >铁塔设计单位</label>
                             <div class="col-sm-4">
								<input class="form-control"  id="tm_design_unit" name="tm_design_unit"  type="text" placeholder=""/>
                             </div>
                       
                       </div>  
                       
                       <div class="form-group">
 
                           <label class="col-sm-2 control-label" for="tm_lifespan"  >已使用年限</label>
                             <div class="col-sm-4">
								<input class="form-control"  id="tm_lifespan" name="tm_lifespan"  type="number" placeholder="年"/>
                             </div>
                       
                            <label class="col-sm-2 control-label" for="tm_s_status"  >铁塔维护状况描述</label>
                             <div class="col-sm-4">
								<input class="form-control"  id="tm_s_status" name="tm_s_status"  type="text" placeholder=""/>
                             </div>
                             
                       </div>   
                     
 
                         

                    </fieldset>
                    
 					<fieldset>
                        <legend>附件</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >铁塔设计图纸（包括基础图）</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(7)">上传</button>
																<br/>
								<div id="file_box7">
								</div>
                            </div>
 							
                          </div>
 
                       </div>
                       
 						<div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >地勘报告</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(8)">上传</button>
																<br/>
								<div id="file_box8">
								</div>
                            </div>
 							
                          </div>
 
                       </div>  
                       
                        <div class="form-group">
                          <label class="col-sm-2 control-label"  for="" >铁塔检测报告</label>
                          <div class="col-sm-10">
                            <div class="alert alert-warning">
								<button type="button" class="btn btn-default   btn-sm" onclick="uploadfile(9)">上传</button>
								<br/>
								<div id="file_box9">
								</div>
                            </div>
 							
                          </div>
 
                       </div>  
                       
                       
                       </fieldset>
                </form>
 
</body>

</html>
