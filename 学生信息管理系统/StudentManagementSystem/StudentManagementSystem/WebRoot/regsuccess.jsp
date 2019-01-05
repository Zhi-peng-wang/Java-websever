<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regsuccess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="bs/js/jquery-3.3.1.min.js" ></script>
		<script type="text/javascript" src="bs/js/bootstrap.min.js" ></script>
		<link rel="stylesheet" href="bs/css/bootstrap.min.css" />
		<style>
			body{
				background-color:gainsboro;
			}
			.login{
				height: 500px;
				width: 700px;
				margin: 100px auto;
				background-color: lightyellow;
			}
			.login .login-left{
				width: 260px;
				height: 500px;
				text-align: center;
				background-color: darkorange;
				float: left;
			}
			.login .login-left span {
				color:antiquewhite;
				font-size: 66px;
				margin: 150px 95px 30px 95px;
				
			}
			.login-right{
				position: relative;
				top: 150px;
			}
			input{
				margin-bottom: 30px;
			}
		</style>
  </head>
  
  <body>
		<div class="container">
			<div class="login">
				<div class="login-left">
					<!--<img src="holder.js/260x500"  />-->
					<span class="glyphicon glyphicon-user"></span>
					<p style="font-size: 20px;color: antiquewhite;">注册页面</p>
				</div>
				<div class="login-right">
					<form class="form-group form-horizontal" action="" method="post">
						<p class="lead" style="padding: 70px; padding-left: 350px;">您已经成功注册，请<a href="index.jsp">登陆</a></p>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>

































