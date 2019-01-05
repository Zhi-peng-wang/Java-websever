<%@ page language="java" import="java.util.*,StuSelSystem.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifyStudent_do.jsp' starting page</title>
    
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
		<script type="text/javascript" src="bs/js/holder.min.js" ></script>
		<style>
			body{
				background-color:gainsboro;
			}
			.login{
				height: 500px; 
				width: 700px;
				margin:100px auto;
				background-color: lightyellow;
			}
			.login .login-left{
				width: 260px;
				height: 500px;
				text-align: center;
				background-color:deepskyblue;
				float: left;
			}
			.login .login-left div{
				color:antiquewhite;
				font-size: 66px;
				margin-top: 180px;
				
			}
			.login-right{
				border: 1px solid black;
				width: 440px;
				height: 500px;
				float: left;
			}
			.form-group{
				margin-top: 30px;
			}
		</style>

  </head>
  <% request.setCharacterEncoding("utf-8");%>  
	<jsp:useBean id="student" class="StuSelSystem.Student" scope="page">
	<jsp:setProperty name="student" property="*"/>
	</jsp:useBean>
	<jsp:useBean id="studentUtil" class="StuSelSystem.StudentUtil" scope="page"/>
<body>
	<% studentUtil.modifyStudent(student);%>
	<div class="container">
			<div class="login">
				<div class="login-left">
					<div>
						<span class="glyphicon glyphicon-user"></span>
						<p style="font-size: 20px;color: antiquewhite;">学生管理系统</p>
					</div>
				</div>
				<div class="login-right">
					<center style="margin-top: 200px;">
						<h3 style="margin-bottom: 30px;">修改成功!!!</h3>
						<button class="btn btn-default center-block"><a href="main.jsp" class="list-unstyled">返回</a></button>
					</center>
				</div>
				
			</div>
		</div>
  </body>
</html>


















