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
    
    <title>右部框架</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">                            
        ul,li{list-style:none; margin:0; padding:0;} 
        .scroll{ width:284px; height:140px; overflow:hidden; margin-top: 5px; font-size: 12px;} 
        .scroll li{ width:264px;overflow:hidden; margin-left: 10px; color: red;}       
 	</style>

  </head>
  
  <body>
  	<div class="sidebar fr">
  	<!--sidebarButtom Begin{-->
		<div class="sidebarButtom f14">
                 	
		<!-- 用户已经登录 -->
		<s:if test="%{#username!=null&&#username!=''}">
			<p class="mt20 ml10 lh150">Hi,<strong><font color="red">欢迎您，<s:property value="username"/></font></strong><br />欢迎来到失物招领平台，按照你的需要发布信息吧！</p>
            <!--Buttom Begin{-->
           	<div class="sidebarButtom_buttom" style="margin-top: 10px;">
            	<a href="../LostAndFoundSystem/AddFindItype.action?username=<s:property value="username" />&uid=<s:property value="uid" />" target="_parent"><img src="images/getIt.gif" /></a>
            	<a href="../LostAndFoundSystem/AddLostItype.action?username=<s:property value="username" />&uid=<s:property value="uid" />" target="_parent"><img src="images/loseIt.png" /></a>
            	<a href="publishThanksInfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&keepThis=true&action=post_find&TB_iframe=true&height=300&width=500" title="我要感谢" class="thickbox"><img src="images/thankYou.png" /></a>
            </div>
            <!--}Buttom End-->
        </s:if>   
		<!-- 用户未登录 -->
		<s:else>
        <p class="mt20 ml10 lh150">Hi<br />欢迎来到失物招领平台，如果你想要发布信息，请先登陆吧！</p>
        
            <div class="sidebarButtom_buttom" style="margin-top: 10px;">
            	<a href="goToLogin.jsp" title="用户登录" target="_parent"><img src="images/getIt.gif" /></a>
				<a href="goToLogin.jsp" title="用户登录" target="_parent"><img src="images/loseIt.png" /></a>                          
                <a href="goToLogin.jsp" title="我要感谢" target="_parent"><img src="images/thankYou.png" /></a>
            </div>
        </s:else>
        </div>
		<!--}sidebarButtom End-->
        <div class="clear"></div>
        	<!--synchro Begin{-->
            <div class="synchro mt10">
            	<div class="synchro_tittle">
                	<img src="images/synchro_tittle.gif" />
                </div>                      
				<script type="text/javascript">
				function autoScroll(obj){ 
				    $(obj).find(".list").animate({ 
				        marginTop : "-25px" 
				    },500,function(){ 
				        $(this).css({marginTop : "0px"}).find("li:first").appendTo(this); 
				    }) 
				} 
				$(function(){ 
				    setInterval('autoScroll(".scroll")',5000) ;
				}) ;
				$("#ajax").html("<li>正在加载中...</li>");
				$.ajax({
					   type: "POST",
					   url: "AllTinfo.action",
					   data: "",
					   success: function(msg){
						   $("#ajax").html(msg);
					   }
					});
				</script>
 				<div class="scroll"> 
                	<ul class="list" id="ajax"> 
                
                	</ul> 
        		</div> 
			</div>
            <!--}synchro End-->
	 </div>
  </body>
</html>
