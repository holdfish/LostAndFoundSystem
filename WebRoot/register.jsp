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
    
    <title>用户注册</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/register.css">
	
	<script type="text/javascript">
	
		function YYYYMMDDstart() 
				{
				var y = new Date().getFullYear();
				for (var i = y; i > (y-100); i--)
				document.MyForm.YYYY.options.add(new Option(" "+ i +" 年", i));
			
				for (var i = 1; i < 13; i++) 
				document.MyForm.MM.options.add(new Option(" " + i + " 月", i));
			
				document.MyForm.YYYY.value = y;
				document.MyForm.MM.value = new Date().getMonth() + 1;
			
				if (new Date().getMonth() == 1 && IsLeapYear(YYYYvalue)) n++;
				writeDay(n);
				document.MyForm.DD.value = new Date().getDate();t
			} 
			
			if(document.attachEvent) 
				window.attachEvent("onload", YYYYMMDDstart);
			else
				window.addEventListener('load', YYYYMMDDstart, false);
			
			function YYYYDD(str)
			{	
				var MMvalue = document.MyForm.MM.options[document.MyForm.MM.selectedIndex].value;
				if (MMvalue == "")
				{	
					var e = document.MyForm.DD;
					OptionsClear(e);
					return;
				} 
			}
			
			function MMDD(str)
			{	
				var YYYYvalue = document.MyForm.YYYY.options[document.MyForm.YYYY.selectedIndex].value;
				if (YYYYvalue == "")
				{	
					var e = document.MyForm.DD;
					OptionsClear(e);
					return;
				} 
			}

			function OptionsClear(e) 
			{	
				e.options.length = 1;
			}


			 //判断空值
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

			function check(form){
				var re=/[^\u4e00-\u9fa5]/;
				var StuID=MyForm.stuId.value;
				var TrueName=MyForm.trueName.value;
			    var LoginID=MyForm.loginId.value;
			    var Password=MyForm.password.value;
			    var RePassword=MyForm.repassword.value;
			    var IDCard=MyForm.idcard.value;
			    if(isStrNull(StuID)==0)
			    {
			    	alert("请输入学号");
			    	return false;
			    }
			    if (isStrNull(TrueName)==0 || TrueName.length<2 || TrueName.length>5 ){
					 alert("请认真填写您的真实姓名!");
					 return false;
				}
				if(re.test(TrueName)){
					alert("请认真填写您的真实姓名!");
					return false;
					}
			    if(isStrNull(LoginID)==0)
			    {
			    	alert("请输入登陆账号");
			    	return false;
			    }
			    if(isStrNull(Password)==0)
			    {
			    	alert("请输入密码");
			    	return false;
			    }
			    if(isStrNull(RePassword)==0)
			    {
			    	alert("请重新输入密码");
			    	return false;
			    }
			    if(Password!=RePassword){
					alert("两次输入的密码不同!");
					return false;
					}
			    if(isStrNull(IDCard)==0)
			    {
			    	alert("请输入身份证号");
			    	return false;
			    }
			}

	</script>
	

  </head>
  
  <body>
    <div id="formwrapper">
      <h3>未注册用户请注册</h3>
      <font style="color:#0f5d3e;"><s:actionmessage /></font>
      <form action="register.action" method="post" name="MyForm" onsubmit="return check(this);" >
        <fieldset>
          <legend>用户注册</legend>
          <div>
            <label for="stuId">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号</label>
            <input type="text" name="stuId" class="size" maxlength="30"><span style="color:gray;">您的学号</span>
          </div>
          <div>
            <label for="Name">真实姓名</label>
            <input type="text" name="trueName" class="size" maxlength="30"><span style="color:gray;">请认真填写</span>
          </div>
          <div>
            <label for="Login_ID">登陆账号</label>
            <input type="text" name="loginId" class="size" maxlength="30"><span style="color:gray;">您登陆的用户名</span>
          </div>
          <div>
            <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</label>
            <input type="password" name="password" class="size" maxlength="15"><span style="color:gray;">*（最多15个字符）</span>
          </div>
          <div>
            <label for="confirm">重复密码</label>
            <input type="password" name="repassword" class="size" maxlength="15"><br >
          </div>
          <div>
            <label for="confirm">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</label>
             <input type=radio name="sex" value="男" checked>帅哥&nbsp;&nbsp;<input type=radio name="sex" value="女">美女<br>
          </div>
          <div>
            <label for="birthday">出生年月</label>
            <select name="YYYY" onChange="YYYYDD(this.value)"><option value=""></option></select>
			<select name="MM" onChange="MMDD(this.value)"><option value=""></option></select>
          </div>
          <div>
            <label for="IDcard">身份证号</label>
            <input type="text" name="idcard" class="size" maxlength="18"><span style="color:gray;">请填写真实身份证号 </span>
          </div>
          <br><br><br>
          <div class="enter">
            <input type="submit" value="提交" />
            <input type="reset" value="重新输入" />
          </div>
        </fieldset>
      </form>
    </div>
  </body>
</html>
