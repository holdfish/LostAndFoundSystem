<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加管理员界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
	
		body,td, { 
			font-family: 宋体, Arial; 
			font-size: 12px; 
		}
					
		.tbhead { 
			font: bold 14px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
			color: #4f6b72; 
			border-right: 2px solid #C1DAD7;
			border-left: 2px solid #C1DAD7;
			border-bottom: 2px solid #C1DAD7; 
			border-top: 2px solid #C1DAD7; 
			text-align: center;
			padding: 8px 0px 8px 0px;
			background: #CAE8EA; 
		}
		
		.tbtd { 
			border-right: 1px solid #C1DAD7;
			border-left: 1px solid #C1DAD7;
			border-bottom: 1px solid #C1DAD7; 
			border-top: 1px solid #C1DAD7;
			background: #fff; 
			font-size:13px; 
			padding: 6px 6px 6px 20px; 
			color: #4f6b72; 
		}
		.tbfoot{
			border-right: 2px solid #C1DAD7;
			border-left: 2px solid #C1DAD7;
			border-bottom: 2px solid #C1DAD7; 
			border-top: 2px solid #C1DAD7; 
			padding: 8px 0px 8px 0px;
		}
	</style>

  </head>
  
  <body>
  	<s:if test="%{#powerNum==2}">
  		<script>
  			alert('对不起，您的权限不够！无法进行此步操作！');
  		</script>
  	</s:if>
  	<s:else>
    <center>
    	<form action="AddAdmin.action" method="post">
    		<table style="border:2px dashed #C1DAD7;width:450px;">
    			<tr>
    				<td align="center" colspan="2" class="tbhead">增加管理员</td>
    			</tr>
    			<tr>
    				<td align="center" class="tbtd">登&nbsp;录&nbsp;名</td>
    				<td class="tbtd"><input style="width:150px" type="text" name="login_name"/>（英文字母或数字）</td>
    			</tr>
    			<tr>
    				<td align="center" class="tbtd">密&nbsp;&nbsp;&nbsp;&nbsp;码</td>
    				<td class="tbtd"><input style="width:150px" type="password" name="password" />（英文字母或数字，至少6位）</td>
    			</tr>
    			<tr>
    				<td align="center" class="tbtd">重复密码</td>
    				<td class="tbtd"><input style="width:150px" type="password" name="repassword" />（再次确认密码）</td>
    			</tr>
    			<tr>
    				<td align="center" class="tbtd">管理权限</td>
    				<td class="tbtd">
    				<s:if test="%{#powerNum==0}">
						<select size=1 name="power_num">
							<option value="">---请选择---</option>
							<option value="1">一级管理员</option>
							<option value="2">二级管理员</option>
						</select>
					</s:if>
					<s:elseif test="%{#powerNum==1}">
						<select size=1 name="power_num">
							<option value="">---请选择---</option>
							<option value="2">二级管理员</option>
						</select>
					</s:elseif>
					</td>
    			</tr>
    			<tr>
    				<td align="center" colspan="2" class="tbfoot">
						<input style="margin:0 80px 0 0;" type="reset" value="重置" />
						<input type="submit" value="提交" />
					</td>
    			</tr>
    		</table>
    	</form>
    </center>
    </s:else>
  </body>
</html>
