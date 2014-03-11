<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>所有招领信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/tablecloth.css" />
	
	<script type="text/javascript" src="js/tablecloth.js"></script>

	<style>
	
		body{
			margin:0 auto;
			background:#f1f1f1;
			font:90% Arial, Helvetica, sans-serif; 
			color:#555;
			line-height:150%;
			text-align:center;
		}
		a{
			text-decoration:none;
			color:#057fac;
		}
		a:hover{
			text-decoration:none;
			color:red;
		}
		#header{
			margin:0 auto;
			width:880px;
		}
		#container{
			margin:0 auto;
			width:880px;
		}
		.sig{	
			margin:0 auto;
			width:880px;
		}
		
	</style>

</head>

<body>
	<div id="header">
	<form action="BsAllFinfo.action" method="post">
		<table>
			<tr>
				<td width="10%">选择物品类型</td>
				<td width="10%">
                    <select name="find_type">
						<option value="" >选择类型</option>
                    <c:forEach items="${requestScope.allItype}" var="itype">
						<option value="${itype.type_name}">${itype.type_name}</option>
					</c:forEach>
					</select>
				</td>
				<td width="10%">物品名称</td>
				<td width="10%"><input type="text" name="find_name" /></td>
				<td width="10%">拾到地点</td>
				<td width="10%"><input type="text" name="find_place" /></td>
				<td width="6%"><input type="submit" value="查询" /></td>
			</tr>
		</table>
	</form>
	</div>

	<div id="container">
			<table cellspacing="0" cellpadding="0">
				<tr>
					<th width="12%">物品类型</th>
					<th width="20%">物品名称</th>
					<th width="20%">拾到地点</th>
					<th width="12%">拾到时间</th>
					<th width="12%">联系人</th>
					<th width="15%">操作</th>
				</tr>
				<s:if test="pagination.list.size()!=0">
			    <s:iterator value="pagination.list">
	    		<tr>
	            	<td><s:property value="find_type" /></td>
	            <s:if test="find_name.length()>10">
	            	<td><s:property value="find_name.substring(0, 10)" /></td>
	            </s:if>
	            <s:else>
	            	<td><s:property value="find_name" /></td>
	            </s:else>
	            	<td><s:property value="find_place" /></td>
	            	<td><s:property value="find_time" /></td>
	            	<td><s:property value="contact_name" /></td>
	            	<td>
	            		<a href="BsFDetail.action?id=<s:property value="id" />&uid=<s:property value="userid" />"><img style="margin:0 35px 0 0;border:none" src="images/more.png" /></a>
	            		<a href="javascript:void(0)" onclick="if(confirm('是否要删除这个信息?')) location.href='AdminDeleteFinfo.action?id=<s:property value="id" />';"><img style="border:none;" src="images/delete.png" /></a>
	            	</td>
	          	</tr>
		    	</s:iterator>
		    	</s:if>																						
			</table>
	</div>
	<div class="sig">
		<s:if test="pagination.allRow>10">
		共<s:property value="pagination.totalPage" />页&nbsp;&nbsp;共<s:property value="pagination.allRow" />条记录 &nbsp;&nbsp;当前第<s:property value="pagination.currentPage" />页
        <s:if test="%{pagination.currentPage == 1}">
    	<font color="gray">首页</font><font color="gray">上一页</font>
    	</s:if>
    	<s:else>
        <a href="BsAllFinfo.action?page=1" style="text-decoration:none;">首页</a>
        <a href="BsAllFinfo.action?page=<s:property value="%{pagination.currentPage-1}"/>" style="text-decoration:none;">上一页</a>
    	</s:else>
    	<s:if test="%{pagination.currentPage != pagination.totalPage}">
        <a href="BsAllFinfo.action?page=<s:property value="%{pagination.currentPage+1}"/>" style="text-decoration:none;">下一页</a>
        <a href="BsAllFinfo.action?page=<s:property value="pagination.totalPage"/>" style="text-decoration:none;">尾页</a>
    	</s:if>
    	<s:else>
    	<font color="gray">下一页</font><font color="gray">尾页</font>
    	</s:else>
    	</s:if>
    	<s:else>
    		共<s:property value="pagination.allRow" />条记录
    	</s:else>
	</div>
  </body>
</html>
