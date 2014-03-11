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
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			font-size: 12px;
			color: #147233;
		}
		-->
	</style>
  </head>
  
  <body>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  	<tr>
		    <td height="23" background="images/b_bottom_02.gif">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="232" height="23" background="images/b_bottom_01.gif">&nbsp;</td>
		        <td><div align="right" class="STYLE1">今天是：
		        	<script type="text/javascript">
						function showDate()
						{        
						    var day="";        
						    var month="";        
						    var ampm="";        
						    var ampmhour="";        
						    var myweekday="";        
						    var year="";        
						    mydate=new Date();        
						    myweekday=mydate.getDay();        
						    mymonth=mydate.getMonth()+1;        
						    myday= mydate.getDate();        
						    myyear= mydate.getYear();        
						    year=(myyear > 200) ? myyear : 1900 + myyear;        
						    if(myweekday == 0)         
						        weekday=" 星期日";        
						    else if(myweekday == 1)        
						        weekday=" 星期一";        
						    else if(myweekday == 2)        
						        weekday=" 星期二";        
						    else if(myweekday == 3)        
						        weekday=" 星期三";        
						    else if(myweekday == 4)         
						        weekday=" 星期四";        
						    else if(myweekday == 5)        
						        weekday=" 星期五";       
						    else if(myweekday == 6)        
						        weekday=" 星期六";        
						    document.write(year+"年"+mymonth+"月"+myday+"日"+weekday);
						}
						showDate();
					</script>
		        </div></td>
		        <td width="25"><img src="images/b_bottom_03.gif" width="25" height="23" /></td>
		      </tr>
		    </table>
		    </td>
	  	</tr>
	</table>
  </body>
</html>
