<%@ page language="java" import="java.util.*,StuSelSystem.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'modifyStudent_pro.jsp' starting page</title>
    
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
				height: 800px; 
				width: 1000px;
				margin:100px auto;
				background-color: lightyellow;
			}
			.login .login-left{
				width: 260px;
				height: 800px;
				text-align: center;
				background-color:deepskyblue;
				float: left;
			}
			.login .login-left div{
				color:antiquewhite;
				font-size: 66px;
				margin-top: 300px;
				
			}
			.login-right{
				border: 1px solid black;
				width: 740px;
				height: 800px;
				float: left;
			}
			.form-group{
				margin-top: 30px;
			}
		</style>
  </head>
  <jsp:useBean id="studentUtil" class="StuSelSystem.StudentUtil" scope="page"/>
  <body>
  		<% 
			String sid=request.getParameter("sid");
			Student student=studentUtil.getStudentInfo(sid);
		%>
		<div class="container">
			<div class="login">
				<div class="login-left">
					<div>
						<span class="glyphicon glyphicon-user"></span>
						<p style="font-size: 20px;color: antiquewhite;">学生基本信息</p>
					</div>
				</div>
				<div class="login-right">
					<form action="modifyStudent_do.jsp" method="post" >
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">学号:</label>
							<div class="col-md-8">
								<input type="text" name="sid" class="form-control sid" readonly=" " value="<%=student.getSid()%>"  />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">班级:</label>
							<div class="col-md-8">
								<input type="text" name="banji" class="form-control " value="<%=student.getBanji()%>" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">姓名:</label>
							<div class="col-md-8">
								<input type="text" name="name" class="form-control " value="<%=student.getName()%>" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">性别:</label>
							<div class="col-md-8">
								<input type="text" name="sex" class="form-control " value="<%=student.getSex()%>" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">生日:</label>
							<div class="col-md-8">
								<input type="text" name="birth" class="form-control " value="<%=student.getBirth()%>" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">联系电话:</label>
							<div class="col-md-8">
								<input type="text" name="phone" class="form-control " value="<%=student.getPhone()%>" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">必选科目1:</label>
							<div class="input-group col-md-8">
						      <input type="text" name="bixiu1" class="form-control" value="<%=student.getBixiu1()%>">
						      <div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">课程<span class="caret"></span></button>
						        <ul class="dropdown-menu dropdown-menu-right">
						          <li><a  disabled="disabled">Java</a></li>
						          <li><a  disabled="disabled">C++</a></li>
						          <li><a  disabled="disabled">C#</a></li>
						          <li role="separator" class="divider"></li>
						          <li><a>请将选好科目写在文本框中</a></li>
						        </ul>
						      </div>
						    </div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">必选科目2:</label>
							<div class="input-group col-md-8">
						      <input type="text" name="bixiu2" class="form-control" value="<%=student.getBixiu2()%>">
						      <div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">课程<span class="caret"></span></button>
						        <ul class="dropdown-menu dropdown-menu-right">
						          <li><a>HTML+css+JavaScript</a></li>
						          <li><a>Android</a></li>
						          <li><a>python</a></li>
						          <li role="separator" class="divider"></li>
						          <li><a>请将选好科目写在文本框中</a></li>
						        </ul>
						      </div>
						    </div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">选修科目2:</label>
							<div class="input-group col-md-8">
						      <input type="text" name="xuanxiu1" class="form-control" value="<%=student.getXuanxiu1()%>">
						      <div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">课程<span class="caret"></span></button>
						        <ul class="dropdown-menu dropdown-menu-right">
						          <li><a>篮球</a></li>
						          <li><a>排球</a></li>
						          <li><a>羽毛球</a></li>
						          <li role="separator" class="divider"></li>
						          <li><a>请将选好科目写在文本框中</a></li>
						        </ul>
						      </div>
						    </div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">选修科目2:</label>
							<div class="input-group col-md-8">
						      <input type="text" name="xuanxiu2" class="form-control" value="<%=student.getXuanxiu2()%>">
						      <div class="input-group-btn">
						        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">课程<span class="caret"></span></button>
						        <ul class="dropdown-menu dropdown-menu-right">
						          <li><a>英语</a></li>
						          <li><a>日语</a></li>
						          <li><a>韩语</a></li>
						          <li role="separator" class="divider"></li>
						          <li><a>请将选好科目写在文本框中</a></li>
						        </ul>
						      </div>
						    </div>
						</div>
						
						<div class="form-group">
							<div class="col-md-offset-3 col-md-10" >
								<input type="submit" value="Submit" class="btn btn-primary denglu" />
								<a href="modifyStudent.jsp"><input type="button" value="Cancel" class="btn btn-danger" /></a>
							</div>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</body>
</html>































