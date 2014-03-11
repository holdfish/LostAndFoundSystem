<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta content="zh-CN" http-equiv="Content-Language"/>
<title>失物招领平台-寻物信息列表</title>

<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>

<script src="js/thickbox.js" type="text/javascript"></script>

<link rel="stylesheet" type="text/css" href="css/allInfo.css" />

<link rel="stylesheet" type="text/css" href="css/thickbox.css" />

</head>

<body>
	<!--warp Begin{-->
	<div class="wrap bc pt20" style="background: url('images/bg2.jpg') no-repeat scroll 0 0 transparent; background-color: #eaf8d4;">
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
                        <!--allInfo_tittle Begin{-->
                        <div class="allInfo_tittle">
                            <img src="images/all_lost.jpg" class="fl" />
                        </div>
                        <!--}allInfo_tittle End-->
                        <!--typeSelect Begin{-->
                        <div class="typeSelect fr">
                        	
                        	<span class="f12 fb">选择物品类型</span>
                            <select class="sort_select" name="object_style" id="objSel" onchange="document.location='AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&lost_type='+this.value">
								<option value="0" >选择类型</option>
                            <c:forEach items="${requestScope.allItype}" var="itype">
								<option value="${itype.type_name}">${itype.type_name}</option>
							</c:forEach>
							</select>
                           
                        </div>
                        <!--typeSelect End-->
                        <div class="clear"></div>
                        <!--list Begin{-->
                        <table class="table tc bc lh180 f12 aBlack" style="height: auto;">
                        	<tr class="tr">
	                            <td>类型</td>
	                            <td>物品名称</td>
	                            <td>地点</td>
	                            <td>丢失时间</td>
	                            <td>详情描述</td>
                            </tr>
                            <s:if test="pagination.list.size()!=0">
			    			<s:iterator value="pagination.list">
				    		<tr>
				            	<td><s:property value="lost_type" /></td>
				            <s:if test="lost_name.length()>10">
				            	<td><a target="_parent" title="点击查看详情" href="QueryLDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><font color="red"><s:property value="lost_name.substring(0, 6)" />...</font></a></td>
				            </s:if>
				            <s:else>
				            	<td><a target="_parent" title="点击查看详情" href="QueryLDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><font color="red"><s:property value="lost_name" /></font></a></td>
				            </s:else>
				            	<td><s:property value="lost_place" /></td>
				            	<td><s:property value="lost_time" /></td>
				            <s:if test="lost_detail_info.length()>10">
				            	<td><a target="_parent" title="点击查看详情" href="QueryLDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><s:property value="lost_detail_info.substring(0, 8)" />...</a></td>
				            </s:if>
				            <s:else>
				            	<td><a target="_parent" title="点击查看详情" href="QueryLDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><s:property value="lost_detail_info" /></a></td>
				            </s:else>
				          	</tr>
					    	</s:iterator>
					    	</s:if>
                            </table>
                            <div class="clear"></div>
                        <!--}list End-->
                        <!--page_number Begin{-->
                        <div id="pagenav" style="text-align: right;bottom:28px;border-top:1px #ccc dashed; font-size: 12px;">
                        	共<s:property value="pagination.totalPage" />页&nbsp;&nbsp;共<s:property value="pagination.allRow" />条记录 &nbsp;&nbsp;当前第<s:property value="pagination.currentPage" />页
                        <s:if test="%{pagination.currentPage == 1}">
                    	<font color="gray">首页</font><font color="gray">上一页</font>
                    	</s:if>
                    	<s:else>
                        <a href="AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&page=1&lost_type=<s:property value="typename"/> " style="text-decoration:none;">首页</a>
                        <a href="AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&page=<s:property value="%{pagination.currentPage-1}"/>&lost_type=<s:property value="typename"/> " style="text-decoration:none;">上一页</a>
                    	</s:else>
                    	<s:if test="%{pagination.currentPage != pagination.totalPage}">
                        <a href="AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&page=<s:property value="%{pagination.currentPage+1}"/>&lost_type=<s:property value="typename"/> " style="text-decoration:none;">下一页</a>
                        <a href="AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&page=<s:property value="pagination.totalPage"/>&lost_type=<s:property value="typename"/> " style="text-decoration:none;">尾页</a>
                    	</s:if>
                    	<s:else>
                    	<font color="gray">下一页</font><font color="gray">尾页</font>
                    	</s:else>
                    	<select onchange="document.location='AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />&lost_type=<s:property value="typename"/>&page='+this.value" >
                    	<option value="">0</option>
                    	<s:iterator value="list" status="status">
                    		<option value="<s:property value="#status.count" /> "><s:property value="#status.count" /></option>
                    	</s:iterator>
                    	</select>
                        </div>
                        <!--}page_number End-->
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