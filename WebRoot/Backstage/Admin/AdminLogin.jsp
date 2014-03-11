<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员登陆</title>
<link href="../../css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
<!--
    function check(form)
    {
	    var admin_username=form.admin_username.value;
	    var admin_password=form.admin_password.value;
	    var code=form.validateCode.value;
	    if(isStrNull(admin_username)==0)
	    {
	    	alert("请输入管理员账号");
	    	return false;
	    }
	   
	    if(isStrNull(admin_password)==0)
	    {
	    	alert("请输入账号密码");
	    	return false;
	    }
	    if(isStrNull(code)==0)
	    {
	    	alert("请输入验证码");
	    	return false;
	    }
	    return true;
	
	
	}
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
	
	function reGetValidateCode(){	
		var img=document.getElementById("validateCodeImg");
		img.src="";
		setTimeout("reGetValidateCode2()",1); 
	}
	
	function reGetValidateCode2(){	
		var img=document.getElementById("validateCodeImg");
		img.src="validateAction.action";
	}
	function login(){
		var f=document.getElementById("login");
		f.action="login.action";
		f.submit();
	}
	
	function mouseOverKey()
	{
	document.getElementById('sub').src ="../../images/login_buttom_c.png"
	}
	function mouseOutKey()
	{
	document.getElementById('sub').src ="../../images/login_buttom.png"
	}
	
	-->
	</script>
</head>

<body>
	<!--login Begin{-->
    <form id="login" class="login" action="adminlogin.action" method="post" onsubmit="return check(this);">
    	<div class="message"><font color=red><s:actionmessage/></font></div>
    	<div class="login_bg">
	        <input  name="login_name" type="text" class="name fl" />
	        <input  name="password" type="password" class="password fl" />
	        <input name="validateCode" type="text" class="auth fl" id="validateCode" />
	        <img id="validateCodeImg" class="auth_img fl" src="validateAction.action" alt="看不清？点击换图" onclick="reGetValidateCode()"/>
			<input class="login_buttom" type="image" src="../../images/login_buttom.png" name="submit" id="sub" onclick="" onmouseover="mouseOverKey()" onmouseout="mouseOutKey()"/>
        </div>
    </form>
    <!--}login End-->
</body>
</html>