<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>中间可伸缩部分</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
	<!--
	body {
		margin-left: 0px;
		margin-top: 0px;
		margin-right: 0px;
		margin-bottom: 0px;
		overflow:hidden;
	}
	-->
	</style>
	<style> 
	.navPoint { 
	COLOR: white; CURSOR: hand; FONT-FAMILY: Webdings; FONT-SIZE: 9pt 
	} 
	</style>
	
	<script>
		function switchSysBar(){ 
		var locate=location.href.replace('Backstage/backstage_center.jsp','');
		var ssrc=document.all("img1").src.replace(locate,'');
		if (ssrc=="images/b_center_01.gif")
		{ 
		document.all("img1").src="images/b_center_02.gif";
		document.all("frmTitle").style.display="none" 
		} 
		else
		{ 
		document.all("img1").src="images/b_center_01.gif";
		document.all("frmTitle").style.display="" 
		} 
		} 
	</script>

</head>

<body>
	<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
	  <tr>
	    <td width="8" valign="middle" background="images/b_center_04.gif" onclick="switchSysBar()">
	    	<span class="navPoint"><img src="images/b_center_01.gif" name="img1" width=8 height=52></span>
	    </td>
	    <td align="center" valign="top">
	    	<iframe name="IDFRAM" height="100%" width="100%" frameborder="0" src="tab/tab.html"></iframe>
	    </td>
	    <td width="4" align="center" valign="top" background="images/b_center_03.gif">
	     　</td>
	  </tr>
	</table>
  </body>
</html>
