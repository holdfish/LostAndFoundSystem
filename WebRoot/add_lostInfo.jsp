<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>失物招领平台-添加寻物信息</title>

<script type="text/javascript" src="js/jquery-1.4.2.min.js" ></script>

<script type="text/javascript" src="js/thickbox.js" ></script>

<script type="text/javascript" src="js/My97DatePicker/WdatePicker.js"></script>

<link rel="stylesheet" type="text/css" href="css/thickbox.css" />

<link rel="stylesheet" type="text/css" href="css/seekInfo_add.css" />


<script type="text/javascript">
<!--
	function check(form)
	{
	    var lost_name=form.lost_name.value;
	    var lost_type_id=form.lost_type.value;
	    var lost_time=form.lost_time.value;
	    var lost_place=form.lost_place.value;
	    var contact_name=form.contact_name.value;
	    var contact_mobile=form.contact_mobile.value;
	    var contact_email=form.contact_email.value;
	    var contact_qq=form.contact_qq.value;
	    var lost_detail_info=form.lost_detail_info.value;
	    var isReadProtocol=form.isReadProtocol;
	    if(!isReadProtocol.checked)
	    {
	    	alert("阅读并同意《失物招领平台发布须知》后才可以发布");
	    	return false;   
	    }
	    if(isStrNull(lost_name)==0)
	    {
	    	alert("请输入物品名称");
	    	return false;
	    }
	    if(isStrNull(lost_type_id)==0)
	    {
	    	alert("请选择物品类型");
	    	return false;
	    }
	    if(isStrNull(lost_place)==0)
	    {
	    	alert("请输入丢失地点");
	    	return false;
	    }
	    if(isStrNull(lost_time)==0)
	    {
	    	alert("请输入丢失时间");
	    	return false;
	    }
	    if(isStrNull(contact_name)==0)
	    {
	    	alert("请输入联系人姓名");
	    	return false;
	    }
	    //校验手机，qq,email,
	    if(contact_mobile!="")
	    {
	        if(!IsTelephone(contact_mobile))
	        {
	        	alert("电话号码格式不正确");
	            return false;
	        }
	    }
	    if(contact_qq!="")
	    {
	        if(!isqq(contact_qq))
	        {
	        	alert("qq号码格式不正确");
	            return false;
	        }
	
	    }
	    if(contact_email!="")
	    {
	        if(!isemail(contact_email))
	        {
	        	alert("邮箱格式不正确");
	            return false;
	        }
	
	    }
	    if(isStrNull(lost_detail_info)==0)
	    {
	    	alert("请输入信息详情");
	    	return false;
	    }
	    if(isStrNull(contact_email)==0&&isStrNull(contact_qq)==0&&isStrNull(contact_mobile)==0)
	    {
	    	alert("请输入至少一项联系方式");
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
	//判断输入是否是有效的电子邮件 
	function isemail(str) 
	{ 
		var result=str.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/); 
		if(result==null) 
			return false; 
		return true; 
	} 
	//匹配腾讯QQ号 
	function isqq(str) 
	{ 
		var result=str.match(/[1-9][0-9]{4,}/); 
		if(result==null) 
			return false; 
		return true; 
	} 
	  function IsTelephone(obj)// 正则判断
	  { 
	
		  var pattern = /^1[3,5]\d{9}$/;
		if(pattern.test(obj)) 
			{ 
			return true; 
			} 
		else 
			{ 
			return false; 
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
            <div class="contentMain">
                <div class="main pt5 bc">
                	<!--info Begin{-->
                    <div class="info f12 fl pr">
                        <!--addInfo_tittle Begin{-->
                        <div class="addInfo_tittle">
                            <img src="images/addSearchInfo.gif" class="fl" />
                        </div>
                        <!--}addInfo_tittle End-->
                        <form class="mt10 ml40" action="addLostInfo.action" method="post" onsubmit="return check(this);">
                       		<table>
                            	<tr class="tr">
                            	<td></td>
                            	<td><span class="red">*</span>号为必填信息</td>
                            	</tr>
                            	<tr>
                                	<td>
                                    	物品名称：
                                    </td>
                                    <td>
                                    	<input type="text" class="add_goodsName mt10 mb5"  name="lost_name"/>
                                        <span class="red">*</span>
                                    </td>
                                    <td rowspan="7" class="add_lost_pic"></td>
                                </tr>
                                <tr>
                                	<td>
                                    	物品类型：
                                    </td>
                                    <td>
                                        <select size="1" name="lost_type" class="add_type mt10 mb5">
											<option selected="selected" value="">--请选择--</option>
											<c:forEach items="${requestScope.allItype}" var="itype">
											<option value="${itype.type_name}">${itype.type_name}</option>
											</c:forEach>
										</select>
                                        <span class="red">*</span>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	丢失地点：
                                    </td>
                                    <td>
                                    	<input type="text" class="add_place mt10 mb5" name="lost_place"/>
                                        <span class="red">*</span>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	丢失时间：
                                    </td>
                                    <td>
										<input id="my_lost_time" type="text"  onclick="WdatePicker()" name="lost_time" class="add_time mt10 mb5" />
										<img onclick="WdatePicker({el:'my_lost_time'})" src="js/My97DatePicker/skin/datePicker.gif" width="16" height="22">
                                    	<span class="red">*</span>
                                    </td>
                                </tr>
                                 <tr>
                                	<td>
                                    	联系人：
                                    </td>
                                    <td>
                                    	<input type="text" class="add_cellphone mt10 mb5" name="contact_name"/>
                                    	<span class="red">*</span>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	联系人手机（选填）：
                                    </td>
                                    <td>
                                    	<input type="text" class="add_cellphone mt10 mb5" name="contact_mobile"/>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	联系人邮箱（选填）：
                                    </td>
                                    <td>
                                    	<input type="text" class="add_email mt10 mb5" name="contact_email"/>
                                    </td>
                                </tr>
                                <tr>
                                	<td>
                                    	联系人QQ（选填）：
                                    </td>
                                    <td>
                                    	<input type="text" class="add_qq mt10 mb5" name="contact_qq"/>
                                    </td>
                                </tr>
                           </table>
                           <table>
                                <tr>
                                	<td>
                                    	详细描述：
                                    </td>
                                    <td>
                                        <textarea class="add_describe mt10" cols="60" rows="7" style="resize:none" name="lost_detail_info"></textarea>
                                    </td>
                                    <td align="left">
                                    	&nbsp;<span class="red">*</span>
                                    </td>
                                </tr>
                                <tr>
                                	<td colspan="3">
                                		<input type="hidden" name="uid" value="<s:property value="uid" />" />
                                		<input type="hidden" name="username" value="<s:property value="username" />" />
                                    	<input type="checkbox" name="isReadProtocol" class="add_checkbox mt10" checked="checked" />
                                       	 阅读须知
                                        <input type="submit" value="添加" class="add_add mt10 ml10" />
                                        <input type="reset" value="重置" class="add_reset mt10 ml10" />
                                    </td>
                                </tr>
                            </table>
                        </form>
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
