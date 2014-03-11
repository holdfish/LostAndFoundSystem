<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>底部</title>
    
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
    <div class="footer mt5 bc">
		<div class="footer_logo fl">
		    <img src="images/footer_logo.gif" />
		</div>
        <address class="f12 aWhite fl">
			Copyright © 2012-2015 <a href="http://www.baidu.com/" target="_blank">www.baidu.cn</a> All rights reserved.<br />
		           地址：怀化学院东区9栋218宿舍   手机：15274583744 &nbsp; E-mail：lzs716@163.com<br/>
		           联系QQ：383207367  &nbsp; 联系人：梁展胜
        </address>
        <p class="f12 aWhite fr">
	        <a href="#" target="_blank">关于我们</a>-
	        <a href="#" target="_blank">网上投稿</a>-
	        <a href="#" target="_blank">服务条款</a>-
	        <a href="#" target="_blank">网友留言</a>-
	        <a href="#" target="_blank">网站地图</a>
        </p>
        <div class="clear"></div>
        <div class="toIndex fr">
        	<a href="Backstage/Admin/AdminLogin.jsp" target="_blank"><img src="images/toBackstage.gif" /></a>
        </div>
    </div>
  </body>
</html>
