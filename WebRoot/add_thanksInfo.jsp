<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>失物招领平台-说出你的感谢</title>
<script type="text/javascript" src="js/UtilTool.js"></script>
<script type="text/javascript">
<!--
function check(form)
{
    var content=form.content.value;
    if(trim(content)=="")
    {
    	alert("请输入内容!");
    	return false;
    }
    return true;


}
-->
</script>
</head>
<body>
<center>
	<font color="red">失物招领平台提倡拾金不昧，乐于助人的精神。如果你的丢失物品经失物招领平台找回，可以在这里说出你的感谢。</font>
	<form action="pubthanks.action" method="post" onsubmit="return check(this);">
		<table>
			<tr><td colspan="2"><textarea rows="10" cols="50" name="content"></textarea></td></tr>
			<tr>
				<td>
				<input type="hidden" name="pubname" value="<s:property value="name" />"/>
				<input type="hidden" name="uid" value="<s:property value="uid" />"/>
				<input type="submit" value="发表"/>
				</td>
				<td>
				<input type="reset" value="重置"/>
				</td>
			</tr>
		</table>
	</form>
</center>

</body>
</html>