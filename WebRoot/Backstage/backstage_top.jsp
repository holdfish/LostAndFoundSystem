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
    
    <title>头部</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			font-size: 12px;
			color: #FFFFFF;
		}
		.STYLE2 {
			font-size: 12px;
			color: #333333;
		}
		-->
		a:link {font-size:12px; color:#000000; text-decoration:none;}
		a:visited {font-size:12px; color:#000000; text-decoration:none;}
		a:hover {font-size:12px; color:#00CCFF;text-decoration:none;}
		.STYLE4 {font-size: 12px}
	</style>
	
	<script type="text/javascript">
		function sure() {
        var conf = confirm("是否退出系统?");
        if(conf == true) {
            return true;
        } else {
            return false;
        }
    }
	</script>
  </head>
  
  <body>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
		    <td height="11" background="images/b_top_02.gif"><img src="images/b_top_01.gif" width="174" height="11"></td>
		  </tr>
		  <tr>
		    <td height="36" background="images/b_top_03.gif">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="282" height="52" background="images/b_logo.gif">&nbsp;</td>
		        <td>
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td>
		            <span class="STYLE1"><img src="images/b_home.gif" width="12" height="13"> </span><span class="STYLE4"><a href="index.jsp" target="_top">回首页</a></span>
		            <span class="STYLE1"> <img src="images/b_quit.gif" width="16" height="16"> </span><span class="STYLE4"><a href="index.jsp" onclick="return sure()" target="_top">退出系统</a></span><span class="STYLE1"> </span>
		            </td>
		          </tr>
		        </table>
		        </td>
		        <td width="247" background="images/b_top_04.gif">&nbsp;</td>
		        <td width="283" background="images/b_top_05.gif">
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td><img src="images/b_uesr.gif" width="14" height="14"><span class="STYLE2"> 当前登录用户：<s:property value="adminName"/> 角色：<s:property value="power"/></span></td>
		          </tr>
		        </table></td>
		      </tr>
	    	</table>
	    	</td>
	  	</tr>
	</table>
  </body>
</html>
