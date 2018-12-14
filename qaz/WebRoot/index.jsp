<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="bs/js/jquery-3.3.1.min.js" ></script>
		<link rel="stylesheet" href="bs/css/bootstrap.min.css" />
		<script type="text/javascript" src="bs/js/bootstrap.min.js" ></script>
  </head>
  
  <body>
  <div class="container" style="width:500px">
  	  <h1 class="page-header">简单的传值</h1>
	  <form action="show.jsp" method="post" class="form-group">
	  		<div class="class="form-group "">
	  			<lable>请输入水果编号：</lable>
	  			<input type="text" name="sid" class="form-control" placeholder="请输入水果id"/>
	    		<input type="submit" value="查询"  class="form-control btn btn-info"/>
	  		</div>
	  </form>
  </div>
  
  </body>
</html>




















