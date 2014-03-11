<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    
    <title>失物招领平台</title>
    
  </head>
  
  <body>
    <s:action name="TopInfo" executeResult="true" namespace="/">
    	<s:param name="username" value="username"></s:param>
    	<s:param name="uid" value="uid"></s:param>
    </s:action>
  </body>
</html>
