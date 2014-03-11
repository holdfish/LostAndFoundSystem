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
    
    <title>公共分页页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <s:if test="pagination.totalPage!=0">
    	<table width="100%" border="0">
    		<tr>
    			<td valign="bottom" align="left" nowrap="nowrap" style="wudth:40%;">
    				总记录:
    				<s:property value="pagination.totalRecord" />
    				条 &nbsp;&nbsp;每页:
    				<s:property value="pagination.size" />
    				条  &nbsp;&nbsp;页码:第
    				<s:property value="pagination.currentPage" />
    				页/共
    				<s:property value="pagination.totalPage" />
    				页
    			</td>
    			<td valign="bottom" align="left" nowrap="nowrap" style="wudth:60%;">
    				<s:url action="%{url}" id="first">
    					<s:param name="action" value="action"></s:param>
    					<s:param name="pagination.currentPage" value="1"></s:param>
    				</s:url>
    				<s:url action="%{url}" id="next">
    					<s:param name="action" value="action"></s:param>
    					<s:param name="pagination.currentPage" value="pagination.currentPage+1"></s:param>
    				</s:url>
    				<s:url action="%{url}" id="prior">
    					<s:param name="action" value="action"></s:param>
    					<s:param name="pagination.currentPage" value="pagination.currentPage-1"></s:param>
    				</s:url>
    				<s:url action="%{url}" id="last">
    					<s:param name="action" value="action"></s:param>
    					<s:param name="pagination.currentPage" value="pagination.totalPage"></s:param>
    				</s:url>
    				<s:if test="pagination.currentPage == 1">
    					<span class="current">首页</span>
    					<span class="current">上一页</span>
    				</s:if>
    				<s:else>
    					<s:a href="%{first}" cssStyle="margin-right:5px;">首页</s:a>
    					<s:a href="%{prior}" cssStyle="margin-right:5px;">上一页</s:a>
    				</s:else>
    				<s:if test="pagination.currentPage == pagination.totalPage || pagination.totalPage == 0">
    					<span class="current">下一页</span>
    					<span class="current">末页</span>
    				</s:if>
    				<s:else>
    					<s:a href="%{next}" cssStyle="margin-right:5px;">下一页</s:a>&nbsp;&nbsp;
    					<s:a href="%{last}" cssStyle="margin-right:5px;">末页</s:a>
    				</s:else>
    			</td>
    		</tr>
    	</table>
    </s:if>
  </body>
</html>
