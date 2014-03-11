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
    
    <title>管理员修改用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css"> 
		/* CSS Document */ 
		
		body { 
			font:"Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
			background: #edfac5; 
		}
				
		#mytable { 
			width: 300px; 
			padding: 0; 
			margin: 0; 
		} 
		.message {
			font:15px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
			color: red;
		}
		.td_left { 
			border-right: 1px solid #C1DAD7; 
			background: #f8e680 no-repeat; 
			font: bold 15px "Trebuchet MS", Verdana, Arial, Helvetica, sans-serif; 
			padding: 6px 6px 6px 18px; 
			color: #4f6b72; 
		}
		.td_right { 
			background: #ecf88a no-repeat; 
			padding: 6px 6px 6px 12px; 
			color: #4f6b72; 
		}
	</style>
	
	<script type="text/javascript">
	function YYYYMMDDstart() 
	{
	var y = new Date().getFullYear();
	for (var i = y; i > (y-100); i--)
	document.MyForm.YYYY.options.add(new Option(" "+ i +" 年", i));

	for (var i = 1; i < 13; i++) 
	document.MyForm.MM.options.add(new Option(" " + i + " 月", i));

	document.MyForm.YYYY.value = y;
	document.MyForm.MM.value = new Date().getMonth() + 1;

	if (new Date().getMonth() == 1 && IsLeapYear(YYYYvalue)) n++;
	writeDay(n);
	document.MyForm.DD.value = new Date().getDate();t
		} 
		
		if(document.attachEvent) 
			window.attachEvent("onload", YYYYMMDDstart);
		else
			window.addEventListener('load', YYYYMMDDstart, false);
		
		function YYYYDD(str)
		{	
			var MMvalue = document.MyForm.MM.options[document.MyForm.MM.selectedIndex].value;
			if (MMvalue == "")
			{	
				var e = document.MyForm.DD;
				OptionsClear(e);
				return;
			} 
		}
		
		function MMDD(str)
		{	
			var YYYYvalue = document.MyForm.YYYY.options[document.MyForm.YYYY.selectedIndex].value;
			if (YYYYvalue == "")
			{	
				var e = document.MyForm.DD;
				OptionsClear(e);
				return;
			} 
		}
	</script>
  </head>
  
  <body>
  	<form action="adminupdate.action" method="post" name="MyForm" onsubmit="return check(this);">
    <center>
    	<font class="message"><s:actionmessage /></font>
    	<table id="mytable" cellspacing="0">
    		<tr>
    			<td class="td_left">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号:</td>
    			<td class="td_right"><input type="text" name="stuId" value=<s:property value="user.stuId"/> ></td>
    		</tr>
    		<tr>
    			<td class="td_left">真实姓名:</td>
    			<td class="td_right"><input type="text" name="trueName" value=<s:property value="user.trueName"/> ></td>
    		</tr>
    		<tr>
    			<td class="td_left">登陆账号:</td>
    			<td class="td_right"><input type="text" name="loginId" value=<s:property value="user.loginId"/> ></td>
    		</tr>
    		<tr>
    			<td class="td_left">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td>
    			<td class="td_right"><input type="text" name="password" value=<s:property value="user.password"/> ></td>
    		</tr>
    		<tr>
    			<td class="td_left">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别:</td>
    			<td class="td_right"><input type=radio name="sex" value="男" checked>男&nbsp;&nbsp;<input type=radio name="sex" value="女">女<br></td>
    		</tr>
    		<tr>
    			<td class="td_left">出生年月:</td>
    			<td class="td_right"><select name="YYYY" onChange="YYYYDD(this.value)"><option value=""></option></select>
					<select name="MM" onChange="MMDD(this.value)"><option value=""></option></select>
				</td>
    		</tr>
    		<tr>
    			<td class="td_left">身份证号:</td>
    			<td class="td_right"><input type="text" name="idcard" value=<s:property value="user.idcard"/> ></td>
    		</tr>
    		<tr>
    			<td><input type="hidden" name="id" value=<s:property value="id"/> ></td>
    			<td><input type="submit" value="修改" />
            		<input type="reset" value="重置" />
            	</td>
    		</tr>
    	</table>
    </center>
    </form>
  </body>
</html>
