<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>

	<title>失物招领平台</title>
	
	<script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>

	<script src="js/thickbox.js" type="text/javascript"></script>
	
	<script src="js/tabs.js" type="text/javascript"></script>
	
	<link rel="stylesheet" type="text/css" href="css/thickbox.css" />
	
	<link rel="stylesheet" type="text/css" href="css/index.css"/>

  </head>
  
  <body>
	<!--整体  Begin-->
	<div class="wrap bc pt20">
    <!--头部开始-->
 		<s:include value="header.jsp"></s:include>
    <!--头部 End-->
        <div class="clear"></div>
        <!--中间框架  Begin-->
        <div class="content bc mt5">
            <div class="contentTop"></div>
            <!--框架内容  Begin-->
            <div class="contentMain">
                <div class="main pt5 bc">
                    <!--主信息  Begin{-->
                    <div class="info fl pr" id="tabDiv">
                        <!--选项卡  Begin-->
                        <ul class="info_tittle f20 fb"  id="tabsHolder"> 
                            <li>
                                <a onmouseover="javascript:showTab('tabs1','tabContent1',0)" target="_blank"  id="tabs1"><img src="images/newSeek2.gif" /></a>
                            </li>
                            <li>
                                <a  onmouseover="javascript:showTab('tabs2','tabContent2',1)" target="_blank" id="tabs2"><img src="images/newGet.gif" /></a>
                            </li>
                            <li>
                                <a onmouseover="javascript:showTab('tabs3','tabContent3',2)" target="_blank" id="tabs3" ><img src="images/leifeng.gif" /></a>
                            </li>
                             <li style="clear: both;"></li>
                        </ul>
                        <!--选项卡  End-->
                   
	                    <!--选项卡——寻物信息-->
	                    <div style="display: block;" id="tabContent1">  
	                        <!--寻物信息  Begin{-->
	                            <table class="table tc bc lh180 f12 aBlack">
	                                <tr>
	                                    <td>类型</td>
	                                    <td>物品名称</td>
	                                    <td>丢失地点</td>
	                                    <td>丢失时间</td>
	                                    <td>详情描述</td>
	                                </tr>
										<!--连接数据库-->
	                            <s:if test="sltd.list.size()!=0">
					    		<s:iterator value="sltd.list">
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
                        <!--寻物信息  End-->
                        <p class="pa f12 aBlack">
                            <a href="AllLinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />" target="_parent">更多信息</a>
                        </p>
                        </div>
                        
                     	<!--选项卡——招领信息-->
                    	<div style="display: none;" id="tabContent2">  
                        <!--招领信息  Begin-->
                            <table class="table tc bc lh180 f12 aBlack">
                                <tr>
                                    <td>类型</td>
                                    <td>物品名称</td>
                                    <td>拾到地点</td>
                                    <td>拾到时间</td>
                                    <td>详情描述</td>
                                </tr>
                                <!-- 数据库连接 -->
							<s:if test="sftd.list.size()!=0">
				    		<s:iterator value="sftd.list">
					    		<tr>
					            <td><s:property value="find_type" /></td>
					            <s:if test="find_name.length()>10">
					            <td><a target="_parent" title="点击查看详情" href="QueryFDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><font color="red"><s:property value="find_name.substring(0, 6)" />...</font></a></td>
					            </s:if>
					            <s:else>
					            <td><a target="_parent" title="点击查看详情" href="QueryFDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><font color="red"><s:property value="find_name" /></font></a></td>
					            </s:else>
					            <td><s:property value="find_place" /></td>
					            <td><s:property value="find_time" /></td>
					            <s:if test="find_detail_info.length()>10">
					            <td><a target="_parent" title="点击查看详情" href="QueryFDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><s:property value="find_detail_info.substring(0, 8)" />...</a></td>
					            </s:if>
					            <s:else>
					            <td><a target="_parent" title="点击查看详情" href="QueryFDetail.action?id=<s:property value="id" />&username=<s:property value="username" />&uid=<s:property value="uid" />" class="object_name"><s:property value="find_detail_info" /></a></td>
					            </s:else>
					          	</tr>
				    		</s:iterator>
				    		</s:if>
                            </table>                    
                        <!--招领信息  End-->
                        <p class="pa f12 aBlack">
                            <a href="AllFinfo.action?username=<s:property value="username" />&uid=<s:property value="uid" />" target="_parent">更多信息</a>
                        </p>
                        </div>
                        
	                    <!--选项卡——雷锋榜-->
	                    <div style="display: none;" id="tabContent3">  
	                        <!--雷锋榜  Begin{-->
	                        <table class="table tc bc lh180 f12 aBlack">
                            	<tr>               
									<td style="width: 30%;"><span>编号</span></td>
									<td style="width: 30%;"><span>好心人</span></td>
									<td style="width: 30%;"><span>上榜票数</span></td>	
									<td style="width: 20%;"><span></span></td>
                            	</tr>
                            <!-- 要从数据库中取数据 -->
	                        <s:if test="slfbangtd.list.size()!=0">
				    		<s:iterator value="slfbangtd.list">
                            	<tr>
                            		<td>
                                        <s:property value="id" />
                                    </td>
                                    <td>
                                        <font color="#0367fc"><s:property value="kindleness" /></font>
                                    </td>
                                    <td>
                                        <font style="font-weight:bold;" color="#02cbfd"><s:property value="votednum" /></font>
                                    </td>
                                    <td>
                                    	<s:if test="%{#username!=null&&#username!=''}">
                                        <a href="vote.action?username=<s:property value="username" />&contact_name=<s:property value="kindleness" />&uid=<s:property value="uid" />" title="投票支持"><img style="height:48px;" src="images/vote.jpg"/></a>
                                        </s:if>
                                        <s:else>
                                        <a href="javascript:void(0)" onclick="if(confirm('你还没有登陆，请先登录吧！'));" title="投票支持"><img style="height:48px;" src="images/vote.jpg"/></a>
                                        </s:else>
                                    </td>
                                </tr>
							</s:iterator>
							</s:if>
                            </table>                    
                        <!--雷锋榜  End-->
                        <p class="pa f12 aBlack">
                            <a href="#" target="_blank">更多信息</a>
                        </p>
                       </div>
                    </div>
                    <!--主信息  End-->
                    <!--sidebar Begin{-->
                    <s:include value="right.jsp"></s:include>
                    <!--}sidebar End-->
                    <div class="clear"></div>
                    <!--友情链接  Begin-->
                  	<div class="friendship mt5">
                        <img src="images/friendship.gif" class="friendship_tittle" />
                        <p class="f12 lh200 pt10 aBlack">
                            <a href="http://www.gxu.edu.cn/" target="_blank">怀化学院</a> | 
                            <a href="http://172.28.1.222:81/" target="_blank">计算机系</a> |  
                            <a href="http://net.hhtc.edu.cn/" target="_blank">网络中心</a> |
                            <a href="http://vod.hhtc.edu.cn/" target="_blank">书山影视</a> |
                            <a href="http://bbs.hhtc.edu.cn/bbs/index.php" target="_blank">书山论坛</a> |
                            <a href="http://tsg.hhtc.edu.cn/" target="_blank">图书馆</a> |  
                       	</p>
                    </div>
                    <!--友情链接  End-->
                </div>
            </div>
            <!--框架内容  End-->
            <div class="contentBottom"></div>
        </div>
        <!--中间框架  End-->
        <!--footer Begin{-->
        <s:include value="footer.jsp"></s:include>
        <!--}footer End-->
    </div>
    <!--整体  End-->
  </body>
</html>
