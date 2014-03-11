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
    
    <title>详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/finfo.css">

  </head>
  
  <body>
  	<center>
  	<h1>详细信息</h1>
    <table id="mytable" cellspacing="0"> 
		<tr> 
		<td class="odd" width="20%">物品类型</td> 
		<td class="even"><s:property value="Finfo.find_type"/></td> 
		<td class="odd" width="20%">物品名称</td> 
		<td class="even"><s:property value="Finfo.find_name"/></td> 
		</tr> 
		<tr> 
		<td class="odd">拾到时间</td> 
		<td class="even"><s:property value="Finfo.find_time"/></td> 
		<td class="odd">拾到地点</td> 
		<td class="even"><s:property value="Finfo.find_place"/></td> 
		</tr>
		<tr> 
		<td class="odd">联系人</td> 
		<td class="even"><s:property value="Finfo.contact_name"/></td> 
		<td class="odd">联系人手机</td> 
		<td class="even"><s:property value="Finfo.contact_mobile"/></td> 
		</tr>
		<tr> 
		<td class="odd">联系人email</td> 
		<td class="even"><s:property value="Finfo.contact_email"/></td> 
		<td class="odd">联系人QQ</td> 
		<td class="even"><s:property value="Finfo.contact_qq"/></td> 
		</tr>
		<tr> 
		<td class="odd">信息发布者</td> 
		<td class="even"><s:property value="Releaseuser"/></td> 
		<td class="odd">发布时间</td> 
		<td class="even"><s:property value="Finfo.releasetime"/></td> 
		</tr>
		<tr> 
		<td class="odd" style="height:60px;">详细描述</td> 
		<td class="even" colspan=3><s:property value="Finfo.find_detail_info"/></td>  
		</tr>   
	</table> 
	</center>
  </body>
</html>
