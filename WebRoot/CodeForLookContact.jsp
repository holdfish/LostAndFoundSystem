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
    
    <title>验证</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
		function check(form){
	    var code=form.validateCode.value;
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
	</script>
  </head>
  
  <body>
	<table align="center" width="400">
	<tr><td colspan="3"><font color="blue">填写验证码后，你可以看到好心人的联系方式。自己的贵重物品要注意保管好！</font></td></tr>
	<form action="code.action" method="post" onsubmit="return check(this);">
	<input type="hidden" name="findId" value="<s:property value="find_id" />"/>
	<tr><td>验证码:</td><td><input name="validateCode" type="text" />
	<td><img id="validateCodeImg" style="display:inline;width:80px;height:25px;cursor: pointer;" src="lookvalidateAction.action" alt="看不清？点击换图" onclick="reGetValidateCode()"/></td>
	<font color="red"><s:actionmessage/></font>
	</td><td></td></tr>
	<tr><td></td><td><input type="submit" value="提交"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"/></td><td></td></tr>
	</form>
	</table>
	</center>
</body>
</html>
