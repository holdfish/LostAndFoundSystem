<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加物品类型</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">

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
			var type_name=TypeForm.type_name.value;
			if(re.test(type_name)){
				alert("请输入中文!");
				return false;
			}
			if (isStrNull(type_name)==0 || type_name.length!=4 ){
				alert("字数不符合要求!");
				return false;
			}
		}
	</script>

  </head>
  
  <body>
    <center>
    	<font>添加物品类型</font>
    	<form action="addItemType.action" method="post" name="TypeForm" onsubmit="return check(this);">
    		<table>
    			<tr>
    				<td>物品类型名称</td>
    				<td><input type="text" name="type_name" />&nbsp;*只能输入4个汉字</td>
    			</tr>
    			<tr>
    				<td></td>
    				<td><input type="submit" value="添加" />
    					<input type="reset" value="重置" />
    				</td>
    			</tr>
    		</table>
    	</form>
    </center>
  </body>
</html>
