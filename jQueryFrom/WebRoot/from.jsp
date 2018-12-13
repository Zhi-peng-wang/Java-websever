<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'from.jsp' starting page</title>
    
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
		
		<%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="jquery" scope="page" class="from.xx"></jsp:useBean>
	<jsp:setProperty property="*" name="jquery"/>
	</head>
	<body>
		<div class="container">
			<h1 class="page-header">问卷调查答案</h1>
			<div class="panel panel-info">
				<div class="panel-heading ">
					<h3 class="">学情调查</h3>
				</div>
				<div class="panel-body">
					<form class="form-group form-horizontal">
						<div class="form-group">
							<label class="col-lg-2 control-label">你的专业：</label>
							<div class="col-lg-10">
							    <span><jsp:getProperty property="zymc" name="jquery"/></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">你的性别：</label>
							<div class="col-md-10 ">
								<span><jsp:getProperty property="sex" name="jquery"/></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">你的学习时间：</label>
							<div class="col-lg-10">
								<p><%
										String[] check = request.getParameterValues("checkboxed");
										for (int i=0; i<check.length; i++){
										out.println(check[i]+".");
									}
									%>
								</p>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">你是否喜欢你的专业：</label>
							<div class="col-md-10 ">
								<span><jsp:getProperty property="zy" name="jquery"/></span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">你的建议：</label>
							<div class="col-md-10">
								<span><jsp:getProperty property="jy" name="jquery"/></span>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-10" >
								<a href="index.jsp"><input type="button" value="调查页面" class="btn btn-primary" /></a>
								
							</div>
						</div>
					</form>
				</div>
				<div class="panel-footer"></div>
			</div>
		</div>
	</body>
</html>
