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
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function isStrNull(msg) {
			var mystr = msg;
			while ((mystr.indexOf(" ") == 0) && (mystr.length > 1)) {
			    mystr = mystr.substring(1, mystr.length);
			}
			if (mystr == " ") {
			    mystr = "";
			}
			if (msg == null || mystr == "" || mystr == 0) {
			    return 0;
			} else {
			    return 1;
			}
		}
		function checkUserlogin(form) {
	    	var loginId=form.loginId.value;
	    	var password=form.password.value;
	    	if(isStrNull(loginId)==0)
	    	{
	    		alert("请输入您的登陆账号!");
	    		return false;
	    	}
	    	if(password=="")
	    	{
	    		alert("请输入密码!");
	    		return false;
	    	}
	    }
	</script>

	<style type="text/css">
		.STYLE12 {
			font-size: 12pt;
			font-family:黑体;
		}
		.title{font-family:楷体;FONT-SIZE: 15px;font-weight:bold;color=#8E2323}
		.grey{FONT-SIZE: 15px;color:#FF7F00;}
	
		textarea, input, select{
		    background: #FFFFFF;
		    border: 2px solid #E9C2A6;
		    color: blue;
		    font-family: verdana, tahoma, sans-serif;
		    font-size: 0.95em;
		    }
		.username{
		    background-image:url(images/username.gif);
			background-position: 3px 3px;
			background-repeat:no-repeat;
			padding-left:25px;
			height:25px;
			FONT-SIZE: 12px;
			}
		.password{
		    background-image:url(images/password.gif);
			background-position: 3px 3px;
			background-repeat:no-repeat;
			padding-left:25px;
			height:25px;
			FONT-SIZE: 12px;
			}
	   </style>
</head>

<body background="images/UserloginBg.jpg">
	<table width="208" border="0" align="center" cellpadding="5" cellspacing="5">
      <td height="134" colspan="3" valign="top">
        <embed src="images/Userlogin.swf" quality="high"  width="750" height="134"></embed>
      </td>
	  <form action="userlogin.action" method="post" onsubmit="return checkUserlogin(this)">
	  <tr>
	  	<s:if test="%{#loginerror!=null}">
	    <td class="grey"><img src="images/warning.gif" width="16" height="16" align="absmiddle"> <s:property value="loginerror"/></td>
	  	</s:if>
	  </tr>
	  <tr>
	    <td class="title">用户名</td>
	  </tr>
	  <tr>
	    <td><input name="loginId" type="text" class="username" size="30"></td>
	  </tr>
	  <tr>
	    <td class="title">密&nbsp;&nbsp;码</td>
	  </tr>
	  <tr>
	   <td><input name="password" type="password" class="password" size="30"></td>
	  </tr>
	  <tr>
	  <td><input type="submit" value="登录">
	  &nbsp;&nbsp;
	      <input type="reset" value="重置"></td>
	  </tr>
	 <form>
	</table>
  </body>
</html>
