<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="image/jpeg"%>
<%@ page import="java.awt.*"%>
<%@ page import="java.awt.image.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.imageio.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>验证码</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%  
	response.setHeader("Cache-Control","no-cache");
	//directs caches not to store the page under any circumstance
	response.setHeader("Cache-Control","no-store");
	//causes the proxy cache to see the page as "stale" 
	response.setHeader("Expires","0");
	//http 1.0 backward compatibility
	response.setHeader("Pragma","No-cache");
	//在内存中创建图象
	int iWidth=60,iHeight=18;
	BufferedImage image=new BufferedImage(iWidth,iHeight,BufferedImage.TYPE_INT_RGB);
	//获取图形上下文
	Graphics g=image.getGraphics();
	//设定背景色
	g.setColor(Color.white);
	g.fillRect(0,0,iWidth,iHeight);
	//画边框
	g.setColor(Color.black);
	g.drawRect(0,0,iWidth-1,iHeight-1);
	//取随机产生的认证码(4位数字)
	String rand = Math.random()*10000 +"";
	rand=rand.substring(0,rand.indexOf("."));
	switch(rand.length())
	{
		case 1:rand="000"+rand;break;
		case 2:rand="00"+rand;break;
		case 3:rand="0"+rand;break;
		default:rand=rand.substring(0,4);break;	
	}//将认证码存入SESSION
	session.setAttribute("VALIDATECODE",rand);
	//将认证码显示到图象中
	g.setColor(Color.black);
	g.setFont(new Font("Times New Roman",Font.PLAIN,18));
	g.drawString(rand,10,15);
	//随机产生88个干扰点,使图象中的认证码不易被其它程序探测到
	Random random=new Random();
	for(int iIndex=0;iIndex<88;iIndex++)
	{
		int x=random.nextInt(iWidth);
		int y=random.nextInt(iHeight);
		g.drawLine(x,y,x,y);
	}
	//图象生效
	g.dispose();
	//输出图象到页面
	ImageIO.write(image,"JPEG",response.getOutputStream());
	out.clear(); 
	//out.close();
	out = pageContext.pushBody();
	%>
  </body>
</html>
