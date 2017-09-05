<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>form8</title>
 
</head>

<body style=" font-family: 'Microsoft YaHei';color:#666666;">
<form class="form-horizontal" role="form"  id="info_from8">
                    <fieldset>
                        <legend>台站网络情况</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label"  for="ta_net" >与上级系统连接方式</label>
                          <div class="col-sm-4">
                            <select id="ta_net" name ="ta_net" class="form-control">
								<option>光缆</option>
								<option>微波</option>
								<option>无</option>
							</select>
                          </div>
                          <label class="col-sm-2 control-label"  for="ta_s_centre" >是否通过网络传输到中心</label>
                          <div class="col-sm-4">
                             <select id="ta_s_centre" name ="ta_s_centre" class="form-control">
								<option value ="1" >是</option>
								<option value ="0" >否</option>
							</select>
                          </div>
                       </div>
 

                      	</fieldset>
                      	
                      	<fieldset>
                        <legend>核心业务自动化-发射机管理</legend>
                        <div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_sm_i" >是否具备对外智能接口</label>
                             <div class="col-sm-4">
                             <select id="ta_sm_i" name ="ta_sm_i" class="form-control">
								<option value ="1" >是</option>
								<option value ="0" >否</option>
							</select>
                            </div>

                           <label class="col-sm-2 control-label" for="ta_sm_i_type" >若具备接口,接口方式为</label>
                             <div class="col-sm-4">
                             <select id="ta_sm_i_type" name ="ta_sm_i_type" class="form-control">
								<option>公开</option>
								<option>未公开</option>
							</select>
                            </div>
                       </div>      

                      
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_sm_c_i" >控制接口</label>
                             <div class="col-sm-4">
 							<select id="ta_sm_c_i" name ="ta_sm_c_i" class="form-control">
								<option>RS485</option>
								<option>RS232</option>
								<option>以太网</option>
								
							</select>
                    		 </div>
                    		 
                    		<label class="col-sm-2 control-label" for="ta_sm_m_c" >监测内容</label>
                             <div class="col-sm-4">
 								<select id="ta_sm_m_c" name ="ta_sm_m_c" class="form-control">
								<option>功率</option>
								<option>开关机控制</option>
								<option>输入输出信号</option>
								<option>主备倒换</option>
								<option>频率监测</option>
								<option>电流电压</option>
							</select>
                    		 </div>
                      </div>      
                      
                      </fieldset>
                      	
                      	<fieldset>
                        <legend>公共业务自动化-电力管理</legend> 
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_pm" >是否具备电力自动化系统 </label>
                            <div class="col-sm-4">
                             <select id="ta_pm" name ="ta_pm" class="form-control">
								<option  value ="1" >是</option>
								<option  value ="0" >否</option>
							</select>
                             </div>
                             
                             <label class="col-sm-2 control-label" for="ta_pm_ups" >UPS监控功能</label>
                             <div class="col-sm-4">
 								<select id="ta_pm_ups" name ="ta_pm_ups" class="form-control">
								<option  value ="1"  >具备</option>
								<option  value ="0" >不具备</option>
								</select>
                    		 </div>
                             
                       	</div>
 
                       
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_pm_pc" >配电柜监控功能 </label>
                            <div class="col-sm-4">
 								<select id="ta_pm_pc" name ="ta_pm_pc" class="form-control">
								<option  value ="1" >具备</option>
								<option  value ="0" >不具备</option>
								</select>
                             </div>
                             
                             <label class="col-sm-2 control-label" for="ta_pm_rp" >稳压电源监控功能</label>
                             <div class="col-sm-4">
 								<select id="ta_pm_rp" name ="ta_pm_rp" class="form-control">
								<option  value ="1" >具备</option>
								<option  value ="0" >不具备</option>
								</select>
                    		 </div>
                             
                       	</div>
                       	
                       	
                       </fieldset>
                      	
                      <fieldset>
                       <legend>公共业务自动化-安防系统</legend>
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_vs"  >视频监控系统 </label>
                             <div class="col-sm-4">
								<select id="ta_vs" name ="ta_vs" class="form-control">
								<option>不具备</option>
								<option>数字</option>
								<option>模拟</option>
								</select>
                            </div>
                             <label class="col-sm-2 control-label" for="ta_vs_region"  >所在区域 </label>
                             <div class="col-sm-4">
								<select id="ta_vs_region" name ="ta_vs_region" class="form-control">
								<option>设备区</option>
								<option>办公区</option>
								<option>场区</option>
								</select>
                            </div>

                       </div>   
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_vs_am"  >访问方式 </label>
                             <div class="col-sm-4">
							  <select id="ta_vs_am" name ="ta_vs_am" class="form-control">
								<option>本地访问</option>
								<option>IP联网访问</option>
								</select>
								 
                             </div>
                           <label class="col-sm-2 control-label" for=""  >入侵报警系统</label>
                             <div class="col-sm-2">
								<select id="ta_vs_ia" name ="ta_vs_ia" class="form-control">
								<option  value ="1" >具备</option>
								<option  value ="0" >不具备</option>
								</select>
							</div>
							 <div class="col-sm-2">
								<select id="ta_vs_ia_n" name ="ta_vs_ia_n" class="form-control">
								<option  value ="1" >需要</option>
								<option  value ="0" >不需要</option>
								</select>
                             </div>
                       
                       </div>  
                       
                       <div class="form-group">
                           <label class="col-sm-2 control-label" for=""  >出入口控制系统 </label>
                             <div class="col-sm-2">
								<select id="ta_vs_io" name ="ta_vs_io" class="form-control">
								<option  value ="1" >具备</option>
								<option  value ="0" >不具备</option>
								</select>
							</div>
							 <div class="col-sm-2">
								<select id="ta_vs_io_n" name ="ta_vs_io_n" class="form-control">
								<option  value ="1" >需要</option>
								<option  value ="0" >不需要</option>
								</select>
                             </div>
                             
                           <label class="col-sm-2 control-label" for=""  >周界防范系统</label>
                             <div class="col-sm-2">
								<select id="ta_vs_pg" name ="ta_vs_pg" class="form-control">
								<option  value ="1" >具备</option>
								<option  value ="0" >不具备</option>
								</select>
								</div>
							 	<div class="col-sm-2">
								<select id="ta_vs_pg_n" name ="ta_vs_pg_n" class="form-control">
								<option  value ="1" >需要</option>
								<option  value ="0" >不需要</option>
								</select>
                             </div>
                       
                       </div>   
                      </fieldset>
                      	
                      <fieldset>
                       <legend>公共业务自动化-环境监测</legend>
                     
                     
                      <div class="form-group">
                           <label class="col-sm-2 control-label" for=""  >是否具备环境监测</label>
                             <div class="col-sm-2">
								<select id="ta_vs_em" name ="ta_vs_em" class="form-control">
								<option  value ="1" >具备</option>
								<option  value ="0" >不具备</option>
								</select>
							</div>
						 	<div class="col-sm-2">
								<select id="ta_vs_em_n" name ="ta_vs_em_n" class="form-control">
								<option  value ="1" >需要</option>
								<option  value ="0" >不需要</option>
								</select>
                             </div>
                           <label class="col-sm-2 control-label" for="ta_vs_em_position"  >温湿度监控点位置 </label>
                             <div class="col-sm-4">
								<select id="ta_vs_em_position" name ="ta_vs_em_position" class="form-control">
								<option>设备间</option>
								<option>机房</option>
								<option>中控室</option>
								</select>
                             </div>
                       
                       </div>  
                         
						<div class="form-group">
                           <label class="col-sm-2 control-label" for="ta_vs_em_ci"  >通信接口</label>
                             <div class="col-sm-4">
 							<select id="ta_vs_em_ci" name ="ta_vs_em_ci" class="form-control">
								<option>RS485</option>
								<option>RS232</option>
								<option>以太网</option>
								
							</select>
                             </div>
 
                       
                       </div>  
                    </fieldset>
                                        <fieldset>
                         <legend>备注</legend>
                         <div class="form-group">
                           <label class="col-sm-2 control-label" for="t_purpose" >备注</label>
                             <div class="col-sm-10">
 									<textarea class="form-control" rows="4" id="t_remarks_8"  name="t_remarks_8"   optional=""></textarea>
                             </div>

                       </div>   

                    </fieldset>
                </form>
 
</body>

</html>
