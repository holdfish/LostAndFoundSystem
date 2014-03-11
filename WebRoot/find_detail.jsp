<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<title>失物招领平台-招领信息详情--<s:property value="Finfo.find_name" /></title>
	
	<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript" src="js/thickbox.js"></script>
	<link href="css/thickbox.css" type="text/css" rel="stylesheet"  />
	<link href="css/seekInfo.css" type="text/css" rel="stylesheet"  />
	
	<script type="text/javascript">
	<!--
	function checked(form)
	{
	    var word_content=form.word_content.value;
	    if(isStrNull(word_content)==0)
	    {
	    	alert("请输入留言信息");
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
	-->
	</script>
  </head>

  <body>
	<!--warp Begin{-->
	<div class="wrap bc pt20">
        <!--header Begin{-->
 	<s:include value="header.jsp"></s:include>
        <!--}header End-->
        <div class="clear"></div>
        <!--content Begin{-->
        <div class="content bc mt5">
            <div class="contentTop"></div>
            <!--contentMain Begin{-->
            <div class="contentMain" style="height: auto;">
                <div class="main pt5 bc">
                	<!--info Begin{-->
                    <div class="info fl pr" style="height: auto;">
                    	<!--seekInfo Begin{-->
						<div class="seekInfo f12 lh200 fl" style="height: auto;">
                        	<div class="findInfo_tittle fl"></div>
                            <div class="clear"></div>
							<p class="mt10">【物品名称】：<s:property value="Finfo.find_name" /></p>
							<p>【物品类型】：<s:property value="Finfo.find_type" /></p>
                            <p>【拾到地点】：<s:property value="Finfo.find_place" /></p>
                            <p>【拾到时间】：<s:property value="Finfo.find_time" /></p>
                            <p>【联系人】：	<s:property value="Finfo.contact_name" /></p>
                            <p class="describe">
                            	<span class="fl">【详情描述】：</span>
                            	<span class="describeMain fl"><s:property value="Finfo.find_detail_info" /></span>
                           </p>
                        </div>
                        <!--}seekInfo End-->
                        <!--user_photo Begin{-->
                        <div class="user_photo fr">
                        	<img src="images/user_pic.gif" />
                            
                        </div>
                        <!--}user_photo End-->
                        <div class="clear"></div>
	<div style="margin-top: 20px;text-align: right;" >
	<!-- 用户登录 -->
	<s:if test="%{#username!=null&&#username!=''}">
	<a href="CodelookContact.action?id=<s:property value="Finfo.id"/>&keepThis=true&TB_iframe=true&height=200&width=400" title="查看信息"  class="thickbox"><img src="images/contact_Ta.gif"  width="100" height="30"/></a>
	<a href="vote.action?username=<s:property value="username" />&contact_name=<s:property value="Finfo.contact_name" />&uid=<s:property value="uid" />" title="投票支持"><img src="images/vote.gif" width="100" height="30"/></a>
	</s:if>	
	<!-- 用户未登录 -->
	<s:else>	
	<a href="CodelookContact.action?id=<s:property value="Finfo.id"/>&keepThis=true&TB_iframe=true&height=200&width=400" title="查看信息"  class="thickbox"><img src="images/contact_Ta.gif"  width="100" height="30"/></a>
    <a href="goToLogin.jsp" title="用户登录"><img src="images/vote.gif" width="100" height="30"/></a>	
    </s:else>			
</div>
                        
                       
                        <!--clew Begin{-->
                        <div class="clew bc" style="height: auto;">
                        	<h1 class="f16 lh150">以下是好心人提供的线索，赶快来支招吧！</h1>     
                        </div>
                        <!--}clew End-->
                        <!--comment Begin{-->
                        <form action="admin/word/addWord.php" method="post" onsubmit="return checked(this);"  class="comment bc f12">
                        <input type="hidden" name="find_id" value="<?php echo $value['find_id'];?>"/>
                        <input type="hidden" name="GoToURL" value="<?php echo $GoToURL;?>"/>
                        	<textarea class="comment_area" name="word_content"></textarea>
                            <input type="image" src="images/comment_submi.jpg" class="comment_submi ml5 fl" />
                        </form>
                        <!--}comment End-->
                    </div>
                    <!--}info End-->
                    <!--sidebar Begin{-->
                 	<s:include value="right.jsp"></s:include>
                    <!--}sidebar End-->
                    <div class="clear"></div>
                </div>
            </div>
            <!--}contentMain End-->
            <div class="contentBottom"></div>
        </div>
        <!--}content End-->
        <!--footer Begin{-->
  		<s:include value="footer.jsp"></s:include>
        <!--}footer End-->
        </div>
    <!--}warp End-->
  </body>
</html>