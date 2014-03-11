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
    
    <title>所有用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<style type="text/css">
		<!--
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {font-size: 13px}
		.STYLE2 {font-size: 13px}
		.STYLE4 {
			font-size: 13px;
			color: #1F4A65;
			font-weight: bold;
		}
		a:link {
			font-size: 13px;
			color: #06482a;
			text-decoration: none;
		
		}
		a:visited {
			font-size: 13px;
			color: #06482a;
			text-decoration: none;
		}
		a:hover {
			font-size: 13px;
			color: #FF0000;
			text-decoration: underline;
		}
		a:active {
			font-size: 13px;
			color: #FF0000;
			text-decoration: none;
		}
		.STYLE7 {font-size:13px;}
		
		-->
	</style>

	<script>
		var  highlightcolor='#d5f4fe';
		//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
		var  clickcolor='#51b2f6';
		function  changeto(){
		source=event.srcElement;
		if  (source.tagName=="TR"||source.tagName=="TABLE")
		return;
		while(source.tagName!="TD")
		source=source.parentElement;
		source=source.parentElement;
		cs  =  source.children;
		//alert(cs.length);
		if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor=highlightcolor;
		}
		}
		
		function  changeback(){
		if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
		return
		if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
		//source.style.backgroundColor=originalcolor
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor="";
		}
		}
		
		function  clickto(){
		source=event.srcElement;
		if  (source.tagName=="TR"||source.tagName=="TABLE")
		return;
		while(source.tagName!="TD")
		source=source.parentElement;
		source=source.parentElement;
		cs  =  source.children;
		//alert(cs.length);
		if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor=clickcolor;
		}
		else
		for(i=0;i<cs.length;i++){
			cs[i].style.backgroundColor="";
		}
		}
	</script>

  </head>
  
  <body>
  	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr>
	    <td height="30">
	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="15" height="30"><img src="images/table_images/tab_03.gif" width="15" height="30" /></td>
	        <td background="images/table_images/tab_05.gif"><img src="images/table_images/311.gif" width="16" height="16" /> <span class="STYLE4">用户列表</span></td>
	        <td width="14"><img src="images/table_images/tab_07.gif" width="14" height="30" /></td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr>
	    <td>
	    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	      <tr>
	        <td width="9" background="images/table_images/tab_12.gif">&nbsp;</td>
	        <td bgcolor="e5f1d6">
	        <table width="99%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CECECE" onmouseover="changeto()"  onmouseout="changeback()">
	          	<tr>
		            <td width="6%" height="26" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">序号</div></td>
		            <td width="8%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">学号</div></td>
		            <td width="8%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">真实姓名</div></td>
		            <td width="8%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">登陆账号</div></td>
		            <td width="10%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">密码</div></td>
		            <td width="6%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">性别</div></td>
		            <td width="8%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">出生年月</div></td>
		            <td width="8%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">身份证号</div></td>
		            <td width="7%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">编辑</div></td>
		            <td width="7%" height="18" background="images/table_images/tab_14.gif" class="STYLE3"><div align="center" class="STYLE1">删除</div></td>
	          	</tr>
    	<s:if test="pagination.list.size()!=0">
    		<s:iterator value="pagination.list" status="status">
    		<tr>
            <td height="18" bgcolor="#FFFFFF" class="STYLE2"><div align="center" class="STYLE2 STYLE1"><s:property value="#status.count" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="stuId" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="trueName" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="loginId" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="password" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="sex" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="birthday" /></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center" class="STYLE2"><s:property value="idcard" /></div></td>
            <s:if test="%{#powerNum==2}">
            <td height="18" bgcolor="#FFFFFF"><div align="center"><img src="images/table_images/037.gif" width="9" height="9" /><span class="STYLE1"> [</span><font color="gray" style="font-size:13px;">编辑</font><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="images/table_images/010.gif" width="9" height="9" /> </span><span class="STYLE1">[</span><font color="gray" style="font-size:13px;">删除</font><span class="STYLE1">]</span></div></td>
          	</s:if>
          	<s:else>
          	<td height="18" bgcolor="#FFFFFF"><div align="center"><img src="images/table_images/037.gif" width="9" height="9" /><span class="STYLE1"> [</span><a href="adminedit.action?id=<s:property value="id"/>">编辑</a><span class="STYLE1">]</span></div></td>
            <td height="18" bgcolor="#FFFFFF"><div align="center"><span class="STYLE2"><img src="images/table_images/010.gif" width="9" height="9" /> </span><span class="STYLE1">[</span><a href="javascript:void(0)" onclick="if(confirm('确认要删除该用户?')) location.href='deleteuser.action?id=<s:property value="id"/>';">删除</a><span class="STYLE1">]</span></div></td>
          	</s:else>
          	</tr>
    		</s:iterator>
    	</s:if>
    		</table></td>
        <td width="9" background="images/table_images/tab_16.gif">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="29"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="15" height="29"><img src="images/table_images/tab_20.gif" width="15" height="29" /></td>
        <td background="images/table_images/tab_21.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21%" height="29"><span class="STYLE1">共<s:property value="pagination.totalPage" />页&nbsp;&nbsp;共<s:property value="pagination.allRow" />条记录 &nbsp;&nbsp;当前第<s:property value="pagination.currentPage" />页</span></td>
            <td width="79%" valign="top" class="STYLE1"><div align="right">
              <table width="352" height="29" border="0" cellpadding="0" cellspacing="0">
                <tr>
                	<s:if test="%{pagination.currentPage == 1}">
                    	<td width="62" height="22" valign="middle"><div align="right"><span class="STYLE1"><font color="gray">首页</font></span></div></td>
                    	<td width="50" height="22" valign="middle"><div align="right"><span class="STYLE1"><font color="gray">上一页</font></span></div></td>
                    </s:if>
                    <s:else>
                        <td width="62" height="22" valign="middle"><div align="right"><a href="listalluser.action?page=1&power_num=<s:property value="powerNum"/>" style="text-decoration:none;">首页</a></div></td>
                        <td width="50" height="22" valign="middle"><div align="right"><a href="listalluser.action?page=<s:property value="%{pagination.currentPage-1}"/>&power_num=<s:property value="powerNum"/>" style="text-decoration:none;">上一页</a></div></td>
                    </s:else>
                    <s:if test="%{pagination.currentPage != pagination.totalPage}">
                        <td width="54" height="22" valign="middle"><div align="right"><a href="listalluser.action?page=<s:property value="%{pagination.currentPage+1}"/>&power_num=<s:property value="powerNum"/>" style="text-decoration:none;">下一页</a></div></td>
                        <td width="49" height="22" valign="middle"><div align="right"><a href="listalluser.action?page=<s:property value="pagination.totalPage"/>&power_num=<s:property value="powerNum"/>" style="text-decoration:none;">尾页</a></div></td>
                    </s:if>
                    <s:else>
                    	<td width="54" height="22" valign="middle"><div align="right"><span class="STYLE1"><font color="gray">下一页</font></span></div></td>
                    	<td width="49" height="22" valign="middle"><div align="right"><span class="STYLE1"><font color="gray">尾页</font></span></div></td>
                    </s:else>
                  <form action="listalluser.action" method="post"> 
                  <td width="59" height="22" valign="middle"><div align="right"><span class="STYLE1">转到第</span></div></td>
                  <td width="25" height="22" valign="middle"><span class="STYLE7">
                  	<input name="page" type="text" class="STYLE1" style="height:17px; width:25px;" size="5" />
                  	<input name="power_num" type="hidden" value="<s:property value="powerNum"/>"/>
                  </span></td>
                  <td width="23" height="22" valign="middle"><span class="STYLE1">页</span></td>
                  <td width="30" height="22" valign="middle"><input style="height:18px;width:48px;font-size:12px;" type="submit" value="GO>>" /></td>
                  </form>
                </tr>
              </table>
            </div></td>
          </tr>
        </table></td>
        <td width="14"><img src="images/table_images/tab_22.gif" width="14" height="29" /></td>
      </tr>
    </table></td>
  </tr>
</table>
    	<s:else>
    		<tr>
    			<td>无任何用户信息!</td>
    		</tr>
    	</s:else>
    
  </body>
</html>
