<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form1</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from1"   >
                    <fieldset>
                        <legend>地理位置</legend>
                       <div class="form-group ">
                          <label class="col-sm-2 control-label"  for="t_name">台站名称</label>
                          <div class="col-sm-4  ">
                             <input class="form-control    "  id="t_name"   name="t_name" type="text" placeholder=""   />
                          </div>
                          <label class="col-sm-2 control-label"  for="t_city">市/州</label>
                          <div class="col-sm-4">
                                <select id="t_city" name="t_city" class="form-control">
<option>昆明市</option>
<option>曲靖市</option>
<option>玉溪市</option>
<option>昭通市</option>
<option>保山市</option>
<option>丽江市</option>
<option>普洱市</option>
<option>临沧市</option>
<option>德宏傣族景颇族自治州</option>
<option>怒江傈僳族自治州</option>
<option>迪庆藏族自治州</option>
<option>大理白族自治州</option>
<option>楚雄彝族自治州</option>
<option>红河哈尼族彝族自治州</option>
<option>文山壮族苗族自治州</option>
<option>西双版纳傣族自治州</option>
                              </select>
                          </div>
                       </div>
                       <div class="form-group">
                       
                          <label class="col-sm-2 control-label"  for="t_county">县</label>
                          <div class="col-sm-4">
                             <input class="form-control"  id="t_county" name="t_county" type="text"  placeholder=""   />
                          </div>
                          
                          <label class="col-sm-2 control-label"  for="t_address">地址</label>
                          <div class="col-sm-4">
                             <input class="form-control"  id="t_address" name="t_address" type="text" placeholder=""/>
                          </div>
                          </div>
                          
                          <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">纬度 </label>
                             <div class="col-sm-2">
                             <input class="form-control"  id="t_longitude1" name="t_longitude1" type="number"  placeholder="度"/>
                             </div>
                              <div class="col-sm-2">
                             <input class="form-control"  id="t_longitude2" name="t_longitude2"  type="number"  placeholder="分" />
                             </div>
                             <div class="col-sm-2">
                             <input class="form-control"  id="t_longitude3" name="t_longitude3"  type="number"  placeholder="秒"/>
                          </div>
                          

                       </div>
                       
                         <div class="form-group">
                          <label class="col-sm-2 control-label" for="t_latitude">经度 </label>
                             <div class="col-sm-2">
                             <input class="form-control"  id="t_latitude1" name="t_latitude1" type="number" placeholder="度"/>
                             </div>
                              <div class="col-sm-2">
                             <input class="form-control"  id="t_latitude2" name="t_latitude2" type="number" placeholder="分" />
                             </div>
                             <div class="col-sm-2">
                             <input class="form-control"  id="t_latitude3" name="t_latitude3"  type="number" placeholder="秒"/>
                          </div>
                       </div>
                       
                       
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_accuracy" >精度 </label>
                             <div class="col-sm-4">
                             <input class="form-control"  id="t_accuracy"  name="t_accuracy" type="number" placeholder="米"/>
                             </div>

                           <label class="col-sm-2 control-label" for="t_altitude">海拔高度 </label>
                             <div class="col-sm-4">
                             <input class="form-control"  id="t_altitude" name="t_altitude" type="number" placeholder="米"/>
                             </div>
                       </div>      

                       
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_build_date" >建台时间</label>
                             <div class="col-sm-4">
                             <div class="input-group date form_datetime">
                                       <input class="form-control "  id="t_build_date"  type="text" name="t_build_date"  readonly  data-date-format="yyyy-mm" />
    									 <div class="input-group-addon"> <i class="fa fa-calendar"></i></div>
    						</div>
                    		 </div>
                      </div>      
                       
                       
                       
                    </fieldset>     
                    <fieldset>
                         <legend>基本情况</legend>
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_purpose" >发射任务 </label>
                             <div class="col-sm-4">
                            <select id="t_purpose" name ="t_purpose" class="form-control">
							<option>调频广播</option>
							<option>电视</option>
							<option>调频广播、电视</option>
							</select>
                             </div>

                           <label class="col-sm-2 control-label" for="t_parent">上级主管部门 </label>
                             <div class="col-sm-4">
                             <input class="form-control"  id="t_parent" name ="t_parent" type="text" placeholder=""/>
                             </div>
                       </div>   
                       
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_distance"  >运输车辆能通达的距台站的最近距离 </label>
                             <div class="col-sm-4">
								<input class="form-control"  id="t_distance" name ="t_distance"  type="number" placeholder="公里"/>
                             </div>

                           <label class="col-sm-2 control-label" for="t_move">搬迁计划 </label>
                             <div class="col-sm-4">
                             
                              <div class="input-group date form_datetime">
                                       <input class="form-control "  id="t_move"  type="text" name="t_move"  readonly  data-date-format="yyyy-mm" />
    									 <div class="input-group-addon"> <i class="fa fa-calendar"></i></div>
    						</div>

                             </div>
                       </div>   
                       
                       
                    </fieldset>
                    
                    
                     <fieldset>
                         <legend>备注</legend>
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_purpose" >备注</label>
                             <div class="col-sm-10">
 									<textarea class="form-control" rows="4" id="t_remarks_1"  name="t_remarks_1"   optional=""></textarea>
                             </div>

                       </div>   

                    </fieldset>
                    
 					<input type="hidden" name="t_group"  id="t_group" value="-1">
                </form>
 
</body>

</html>
