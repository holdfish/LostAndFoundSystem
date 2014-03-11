<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>左部</title>

<link href="../css/nav.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

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
			  $('Bf0'+j).style.background='url(../images/nav_01.gif)';
			}
			 }
		}
		if($('Bli0'+numB)){   
			if($('Bli0'+numB).style.display=='block'){
			  $('Bli0'+numB).style.display='none';
			 $('Bf0'+numB).style.background='url(../images/nav_01.gif)';
			}else {
			  $('Bli0'+numB).style.display='block';
			  $('Bf0'+numB).style.background='url(../images/nav_02.gif)';
			}
		}
	}
	function sure() {
	        var conf = confirm("您确定要退出吗?");
	        if(conf == true) {
	            return true;
	        } else {
	            return false;
	        }
	    }
	
</script>
</head>
<body>
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
				<div class="left02down01"><a  onclick="show_menuB(78)" href="javascript:;"><div id="Bf078" class="left02down01_img"></div>管理员操作</a></div>
				<div class="left02down01_xia noneBox" id="Bli078">
					<ul>
						<li onmousemove="show_menu(8)" id="f008"><img src="../images/li.gif" /><a href="Admin/AddAdmin.jsp?powerNum=<s:property value="powerNum"/>" target="IDFRAM">添加管理员</a></li>
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
						<li onmousemove="show_menu(10)" id="f010"><img src="../images/li.gif" /><a href="../listalluser.action" target="IDFRAM">用户列表</a></li>
						<li onmousemove="show_menu(11)" id="f011"><img src="../images/li.gif" /><a href="#">组合条件查询</a></li>
					</ul>
				</div>
			    <div class="left02down01"><a onclick="show_menuB(81)" href="javascript:void(0);"><div id="Bf081" class="left02down01_img"></div>用户密码管理</a></div>
				<div class="left02down01_xia noneBox" id="Bli081">
					<ul>
						<li onmousemove="show_menu(12)" id="f012"><img src="../images/li.gif" /><a href="#">找回密码</a></li>
						<li onmousemove="show_menu(13)" id="f013"><img src="../images/li.gif" /><a href="#">更改密码</a></li>
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
							<li onmousemove="show_menu(18)" id="f018"><img src="../images/li.gif" /><a href="../AdminAddLinfo.action" target="IDFRAM">添加新的寻物信息</a></li>
							<li onmousemove="show_menu(19)" id="f019"><img src="../images/li.gif" /><a href="#">查看所有寻物信息</a></li>
						</ul>
					</div>
				<div class="left02down01"><a onclick="show_menuB(87)" href="javascript:void(0);"><div id="Bf087" class="left02down01_img"></div>招领信息管理</a></div>
					<div class="left02down01_xia noneBox" id="Bli087">
						<ul>
							<li onmousemove="show_menu(20)" id="f020"><img src="../images/li.gif" /><a href="../AdminAddFinfo.action" target="IDFRAM" >添加新的招领信息</a></li>
							<li onmousemove="show_menu(21)" id="f021"><img src="../images/li.gif" /><a href="../BsAllFinfo.action" target="IDFRAM" >查看所有招领信息</a></li>
						</ul>
					</div>
				<div class="left02down01"><a onclick="show_menuB(88)" href="javascript:void(0);"><div id="Bf088" class="left02down01_img"></div>留言信息管理</a></div>
					<div class="left02down01_xia noneBox" id="Bli088">
						<ul>
							<li onmousemove="show_menu(22)" id="f022"><img src="../images/li.gif" /><a href="#">添加新的留言信息</a></li>
							<li onmousemove="show_menu(23)" id="f023"><img src="../images/li.gif" /><a href="#">查看所有留言信息</a></li>
						</ul>
					</div>
				<div class="left02down01"><a onclick="show_menuB(89)" href="javascript:void(0);"><div id="Bf089" class="left02down01_img"></div>物品类型管理</a></div>
					<div class="left02down01_xia noneBox" id="Bli089">
						<ul>
							<li onmousemove="show_menu(24)" id="f024"><img src="../images/li.gif" /><a href="ItemType/addItemType.jsp" target="IDFRAM">添加新的物品类型</a></li>
							<li onmousemove="show_menu(25)" id="f025"><img src="../images/li.gif" /><a href="#">查看所有物品类型</a></li>
						</ul>
					</div>
			</div>
		</div>
		<div class="left01">
			<div class="left03_right"></div>
			<div class="left01_left"></div>
			<div class="left03_c"><a href="../index.jsp" onclick="return sure();" target="_top">安全退出</a></div>
		</div>
	</div>
</body>
</html>
