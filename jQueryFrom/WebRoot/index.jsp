<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="bs/js/jquery-3.3.1.min.js" ></script>
	<script type="text/javascript" src="bs/js/bootstrap.min.js" ></script>
	<link rel="stylesheet" href="bs/css/bootstrap.min.css" />
	<script>
			$(function(){
				$('.zy li a').click(function(){
					var str = $(this).text();
					$(".zy_input").val(str);
				});
				
			});
		</script>
	</head>
	<body>
		<div class="container">
			<h1 class="page-header">问卷调查</h1>
			<div class="panel panel-info">
				<div class="panel-heading ">
					<h3 class="">学情调查</h3>
				</div>
				<div class="panel-body">
					<form class="form-group form-horizontal" action="from.jsp" method="post" >
						<div class="form-group">
							<label class="col-lg-2 control-label">你的专业：</label>
							<div class="col-lg-10">
							    <div class="input-group">
							        <input type="text" class="form-control zy_input" value="python" name="zymc">
							        <div class="input-group-btn  zy">
							            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">专业名称<span class="caret"></span></button>
							            <ul class="dropdown-menu dropdown-menu-right">
								        	<li><a>jQuery</a></li>
								            <li><a>python</a></li>
								            <li><a>Java web</a></li>
								            <li><a>SQL数据库</a></li>
								            <li><a>uml系统分析与设计</a></li>
							            </ul>
							        </div>
							    </div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">你的性别：</label>
							<div class="col-md-10 ">
								<input type="radio" name="sex" value="男"  />男
								<input type="radio" name="sex" value="女"  />女
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">你的学习时间：</label>
							<div class="col-lg-10" >
								<div class="checkbox">
									<label>
								        <input type="checkbox" value="上课时间" name="checkboxed">上课时间
								    </label>
								</div>
								<div class="checkbox">
								    <label>
								        <input type="checkbox" value="夜自修" name="checkboxed">夜自修
								    </label>
								</div>
								<div class="checkbox">
								    <label>
								        <input type="checkbox" value="双休日" name="checkboxed">双休日
								    </label>
								</div>
								<div class="checkbox">
								    <label>
								        <input type="checkbox" value="节假日" name="checkboxed">节假日
								    </label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-2 control-label">你是否喜欢你的专业：</label>
							<div class="col-md-10 ">
								<input type="radio" name="zy" value="是"  />是
								<input type="radio" name="zy" value="否"  />否
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-2 control-label">你的建议：</label>
							<div class="col-md-10">
								<textarea class="form-control dxk" name="jy"  style="height: 100px;" cols=""></textarea>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-offset-2 col-md-10" >
								<input type="submit" value="ok" class="btn btn-primary tijiao" />
								<input type="reset" value="Cancel" class="btn btn-danger" />
							</div>
						</div>
					</form>
				</div>
				<div class="panel-footer"></div>
			</div>
		</div>
	</body>
</html>
