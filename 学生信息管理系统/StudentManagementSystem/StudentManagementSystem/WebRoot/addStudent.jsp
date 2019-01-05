<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addStudent.jsp' starting page</title>
    
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
				height: 800px; 
				width: 700px;
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
				width: 440px;
				height: 800px;
				float: left;
			}
			.form-group{
				margin-top: 30px;
			}
		</style>
		<script>
			$(function(){
				$('.denglu').click(function(){
					var sid=$('.sid').val();
					if(sid==""){
						alert("必须全部填写！");
						$(".sid").focus();
						return false;
					};
				});
			});
		</script>

  </head>
  
  <body>
		<div class="container">
			<div class="login">
				<div class="login-left">
					<div>
						<span class="glyphicon glyphicon-user"></span>
						<p style="font-size: 20px;color: antiquewhite;">学生基本信息</p>
					</div>
				</div>
				<div class="login-right">
				<button class="btn btn-sm pull-right btn-danger" data-toggle='modal' data-target = "#mymodal" style="margin: 0;">填写说明</button>
					<div id="mymodal" class="modal fade">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<div class="close" data-dismiss = "modal">&times;</div>
									<h2>学生基本信息填写说明</h2>
								</div>
								<div class="modal-body">
									<p class="lead">所有信息按照输入框中默认样式填写，格式必须一样，如有错误，后果自负！</p>
									<p class="lead">选课模块，必须按照下拉选项中格式填写，如有错误，后果自负！</p>
									<p class="lead" style="color: red;"><b>请认真详读以上信息！！！</b></p>
								</div>
								<div class="modal-footer">
									<button class="btn btn-danger" data-dismiss = "modal">close</button>
								</div>
							</div>
						</div>
					</div>
					<form class="" method="post" action="addStudent_do.jsp">
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">学号:</label>
							<div class="col-md-8">
								<input type="text" name="sid" class="form-control sid" placeholder="100170301" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">班级:</label>
							<div class="col-md-8">
								<input type="text" name="banji" class="form-control " placeholder="软件1703班" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">姓名:</label>
							<div class="col-md-8">
								<input type="text" name="name" class="form-control " placeholder="张三" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">性别:</label>
							<div class="col-md-8">
								<input type="text" name="sex" class="form-control " placeholder="男" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">生日:</label>
							<div class="col-md-8">
								<input type="text" name="birth" class="form-control " placeholder="1998-01-01" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">联系电话:</label>
							<div class="col-md-8">
								<input type="text" name="phone" class="form-control " placeholder="176xxxxxxxx" />
							</div>
						</div>
						<div class="form-group form-horizontal row">
							<label class="col-md-3 control-label">必选科目1:</label>
							<div class="input-group col-md-8">
						      <input type="text" name="bixiu1" class="form-control" placeholder="Java">
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
						      <input type="text" name="bixiu2" class="form-control" placeholder="HTML+css+JavaScript">
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
						      <input type="text" name="xuanxiu1" class="form-control" placeholder="篮球">
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
						      <input type="text" name="xuanxiu2" class="form-control" placeholder="英语">
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
								<input type="reset" value="Cancel" class="btn btn-danger" />
							</div>
						</div>
					</form>
				</div>
				
			</div>
		</div>
	</body>
</html>














