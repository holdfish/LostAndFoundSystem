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
    
    <title>首部</title>
    
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
            <div class="header bc">
            <!--headerLeft Begin-->
            <div class="headerLeft fl">
                <div class="header_logo fl"></div>
                <!--menu Begin{-->
                <div class="menu fl">
                    <a href="index.action?username=<s:property value="username"/>&uid=<s:property value="uid" />"><img src="images/mene_index.gif" id="index" alt="首页"/></a>
                    <a href="AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />" target="_parent"><img src="images/menu_seek.gif" id="seek" alt="寻物信息"/></a>
                    <a href="AllFinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />" target="_parent"><img src="images/menu_get.gif" id="get" alt="招领信息"/></a>
                </div>
                <!--}menu End-->
            </div>
            <!--}headerLeft End-->
            <div class="headerPic fl"></div>
            <!--headerRight Begin{-->
            <div class="headerRight fr">
              <!--login Begin{-->
              <p class="f16 aWhite">
              
              <s:if test="%{#username!=null&&#username!=''}">
				<a href="index.jsp">退出</a>
              </s:if>
              
              <s:else>
              
                <a href="Userlogin.jsp" target="_parent">登录</a>
				<a href="register.jsp" target="_parent">注册</a>
				
              </s:else>
             </p>
             <!--}login End-->
             <!--search Begin{-->
            <form class="search pr" action="#"  method="get">
                <input type="text" name="keyword" size="14" class="searchArea f12 pa" value="搜索丢失或捡到的物品" onblur="if(this.value=='')this.value='搜索丢失或捡到的物品';" onfocus="if(this.value=='搜索丢失或捡到的物品')this.value='';"/>
                <input type="image" src="images/search_button.gif" width="66" height="30" class="searchButton pa" />
             </form>
             <!--}search End-->
            </div>
            <!--}headerRight End-->
        </div>
  </body>
</html>
