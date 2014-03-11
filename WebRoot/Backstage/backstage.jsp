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
    
	<title>后台管理</title>
	
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/backstage.css">
	<link href="css/nav.css" rel="stylesheet" type="text/css" />
	
	<script> 
		function sure() {
	        var conf = confirm("是否退出系统?");
	        if(conf == true) {
	            return true;
	        } else {
	            return false;
	        }
	    }

		var $=function(id) {
			   return document.getElementById(id);
			}
			
			function show_menu(num){
			for(i=0;i<100;i++){
				if($('li0'+i)){
				$('li0'+i).style.display='none';
				$('f0'+i).className='';
				 }
			}
				  $('li0'+num).style.display='block';//触发以后信息块
				  $('f0'+num).className='left02down01_xia_li';//触发以后TAG样式
			}
			
			function show_menuB(numB){
				for(j=0;j<100;j++){
					 if(j!=numB){
						if($('Bli0'+j)){
					  $('Bli0'+j).style.display='none';
					  $('Bf0'+j).style.background='url(images/nav_01.gif)';
					}
					 }
				}
				if($('Bli0'+numB)){   
					if($('Bli0'+numB).style.display=='block'){
					  $('Bli0'+numB).style.display='none';
					 $('Bf0'+numB).style.background='url(images/nav_01.gif)';
					}else {
					  $('Bli0'+numB).style.display='block';
					  $('Bf0'+numB).style.background='url(images/nav_02.gif)';
					}
				}
			}
			
	</script>
	
  </head>
	
<body>
	<s:if test="%{#adminName==null}">
		<script>
			alert('请先登陆!');
			location='index.jsp';
		</script>
	</s:if>
	<!-- 首部页面 -->
	<div class="head">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr>
		    <td height="11" background="images/b_top_02.gif"><img src="images/b_top_01.gif" width="174" height="11"></td>
		</tr>
		<tr>
		    <td height="36" background="images/b_top_03.gif">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
		        <td width="282" height="52" background="images/b_logo.gif">&nbsp;</td>
		        <td>
		        <table width="100%" border="0" cellspacing="0" cellpadding="0">
		        	<tr>
		            	<td>
		            	<span class="STYLE1"><img src="images/b_home.gif" width="12" height="13"> </span><span class="STYLE4"><a href="index.jsp" target="_parent">回首页</a></span>
		            	<span class="STYLE1"> <img src="images/b_quit.gif" width="16" height="16"> </span><span class="STYLE4"><a href="index.jsp" onclick="return sure()" target="_parent">退出系统</a></span><span class="STYLE1"> </span>
		            	</td>
		          	</tr>
		        </table>
		     	</td>
		     	<td width="247" background="images/b_top_04.gif">&nbsp;</td>
		     	<td width="283" background="images/b_top_05.gif">
		     	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		          	<tr>
		            	<td><img src="images/b_uesr.gif" width="14" height="14"><span class="STYLE2"> 当前登录用户：<font color="blue" style="font-size:13px"><s:property value="adminName"/></font>&nbsp;&nbsp; 角色：<font color="yellow"><s:property value="power"/></font></span></td>
		          	</tr>
		     	</table>
		     	</td>
				</tr>
	    	</table>
	    	</td>
	  	</tr>
	</table>
	</div>
	<!-- 中间部分 -->
	<div class="main">
		<!-- 中间左部分 -->
		<div class="mainleft">
		<div class="lefter"></div>
		<div class="left" id="LeftBox">
			<!-- 管理员 -->
			<div class="left02">
				<div class="left02top">
					<div class="left02top_right"></div>
					<div class="left02top_left"></div>
					<div class="left02top_c">管理员</div>
				</div>
				<div class="left02down">
					<div class="left02down01"><a  onclick="show_menuB(78)" href="javascript:void(0);"><div id="Bf078" class="left02down01_img"></div>管理员操作</a></div>
					<div class="left02down01_xia noneBox" id="Bli078">
						<ul>
							<li onmousemove="show_menu(8)" id="f008"><img src="images/li.gif" /><a href="AddAdminJudgePower.action?power_num=<s:property value="powerNum"/>" target="IDFRAM">添加管理员</a></li>
						</ul>
					</div>
					<div class="left02down01"><a href="#"><div class="left02down01_img"></div>用户登录统计</a></div>
					<div class="left02down01"><a href="#"><div class="left02down01_img"></div>用户激活统计</a></div>
				</div>
			</div>
			<!-- 用户信息 -->
			<div class="left02">
				<div class="left02top">
					<div class="left02top_right"></div>
					<div class="left02top_left"></div>
					<div class="left02top_c">用户信息管理</div>
				</div>
			  	<div class="left02down">
					<div class="left02down01"><a onclick="show_menuB(80)" href="javascript:void(0);"><div id="Bf080" class="left02down01_img"></div>用户信息查询</a></div>
					<div class="left02down01_xia noneBox" id="Bli080">
						<ul>
							<li onmousemove="show_menu(10)" id="f010"><img src="images/li.gif" /><a href="listalluser.action?power_num=<s:property value="powerNum"/>" target="IDFRAM">用户列表</a></li>
							<li onmousemove="show_menu(11)" id="f011"><img src="images/li.gif" /><a href="#">组合条件查询</a></li>
						</ul>
					</div>
				    <div class="left02down01"><a onclick="show_menuB(81)" href="javascript:void(0);"><div id="Bf081" class="left02down01_img"></div>用户密码管理</a></div>
					<div class="left02down01_xia noneBox" id="Bli081">
						<ul>
							<li onmousemove="show_menu(12)" id="f012"><img src="images/li.gif" /><a href="#">找回密码</a></li>
							<li onmousemove="show_menu(13)" id="f013"><img src="images/li.gif" /><a href="#">更改密码</a></li>
						</ul>
					</div>
				</div>
			</div>
			
			<!-- 系统管理 -->
			<div class="left02">
				<div class="left02top">
					<div class="left02top_right"></div>
					<div class="left02top_left"></div>
					<div class="left02top_c">系统管理</div>
				</div>
				<div class="left02down">
					<div class="left02down01"><a onclick="show_menuB(86)" href="javascript:void(0);"><div id="Bf086" class="left02down01_img"></div>寻物信息管理</a></div>
						<div class="left02down01_xia noneBox" id="Bli086">
							<ul>
								<li onmousemove="show_menu(18)" id="f018"><img src="images/li.gif" /><a href="AdminAddLinfo.action" target="IDFRAM">添加新的寻物信息</a></li>
								<li onmousemove="show_menu(19)" id="f019"><img src="images/li.gif" /><a href="#">查看所有寻物信息</a></li>
							</ul>
						</div>
					<div class="left02down01"><a onclick="show_menuB(87)" href="javascript:void(0);"><div id="Bf087" class="left02down01_img"></div>招领信息管理</a></div>
						<div class="left02down01_xia noneBox" id="Bli087">
							<ul>
								<li onmousemove="show_menu(20)" id="f020"><img src="images/li.gif" /><a href="AdminAddFinfo.action" target="IDFRAM" >添加新的招领信息</a></li>
								<li onmousemove="show_menu(21)" id="f021"><img src="images/li.gif" /><a href="BsAllFinfo.action?power_num=<s:property value="powerNum"/>" target="IDFRAM" >查看所有招领信息</a></li>
							</ul>
						</div>
					<div class="left02down01"><a onclick="show_menuB(88)" href="javascript:void(0);"><div id="Bf088" class="left02down01_img"></div>留言信息管理</a></div>
						<div class="left02down01_xia noneBox" id="Bli088">
							<ul>
								<li onmousemove="show_menu(22)" id="f022"><img src="images/li.gif" /><a href="#">添加新的留言信息</a></li>
								<li onmousemove="show_menu(23)" id="f023"><img src="images/li.gif" /><a href="#">查看所有留言信息</a></li>
							</ul>
						</div>
					<div class="left02down01"><a onclick="show_menuB(89)" href="javascript:void(0);"><div id="Bf089" class="left02down01_img"></div>物品类型管理</a></div>
						<div class="left02down01_xia noneBox" id="Bli089">
							<ul>
								<li onmousemove="show_menu(24)" id="f024"><img src="images/li.gif" /><a href="Backstage/ItemType/addItemType.jsp" target="IDFRAM">添加新的物品类型</a></li>
								<li onmousemove="show_menu(25)" id="f025"><img src="images/li.gif" /><a href="#">查看所有物品类型</a></li>
							</ul>
						</div>
				</div>
			</div>
			<div class="left01">
				<div class="left03_right"></div>
				<div class="left01_left"></div>
				<div class="left03_c"><a href="index.jsp" onclick="return sure();" target="_parent">安全退出</a></div>
			</div>
		</div>
		</div>
		<!-- leftend -->
		<!-- 中间右部分 -->
		<div class="mainright">
			<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" style="table-layout:fixed;">
			  	<tr>
			    <td width="8" valign="middle" background="images/b_center_04.gif" onclick="switchSysBar()">
			    	<span class="navPoint"><img src="images/b_center_01.gif" name="img1" width=8 height=52></span>
			    </td>
			    <td align="center" valign="top">
			    	<iframe name="IDFRAM" height="100%" width="100%" frameborder="0" src="time.jsp"></iframe>
			    </td>
			    <td width="4" align="center" valign="top" background="images/b_center_03.gif">
			     　</td>
			  	</tr>
			</table>
		</div>
		<!-- rightend -->
	</div>
	<div class="bottom">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  	<tr>
		    <td height="23" background="images/b_bottom_02.gif">
		    <table width="100%" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td width="232" height="23" background="images/b_bottom_01.gif">&nbsp;</td>
		        <td><div align="right" class="STYLE3">今天是：
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
	</div>
</body>

</html>