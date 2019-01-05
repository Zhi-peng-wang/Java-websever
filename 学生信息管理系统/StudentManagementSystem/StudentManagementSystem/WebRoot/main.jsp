<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="bs/js/jquery-3.3.1.min.js" ></script>
	<link rel="stylesheet" href="bs/css/bootstrap.min.css" />
	<script type="text/javascript" src="bs/js/bootstrap.min.js" ></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
			$(function(){
				$('.carousel-caption').hide();
				$('.item').hover(
					function(){
						$(this).find('.carousel-caption').slideDown();
					},
					function(){
						$(this).find('.carousel-caption').slideUp();
					}
				);
			});
		
		</script>
		<style>
			.carousel-caption{
				background-color: #000000;
				opacity: 0.7;
				width: 100%;
				position: absolute;
				bottom: 0px!important;
				left: 0px!important;
				height: 80px;
			}
			.carousel-caption p{
				padding-top: 10px;
			}
			.carousel-caption h3{
				margin: 0;
			}
			.panel button{
				margin: 15px 40%;
			}
			.panel button a{
				color: white;
			}
		</style>
		<script>
			$(function(){
				$('.chaxun').click(function(){
					var name=$('.name').val();
					if(name==""){
						alert("查询不能为空！");
						$(".name").focus();
						return false;
					};
				});
			});
		</script>
  </head>
  
  <body>
		<div class="container">
			<h1 class="page-header">学生信息系统</h1>
			<div class="row">
				<form class="form-inline col-lg-offset-4 col-lg-5" action="searchStudentBySid_do.jsp" method=post style="margin-bottom: 15px;">
					<div class="form-group form-group-lg">
					    <label>按学生学号查询：</label>
					    <input type="text" name=sid class="form-control name" placeholder="请输入学生学号！">
					    <input type="submit" value="查询" class="btn btn-default chaxun" style="margin-left: 15px;"/>
				    </div>
				</form>
			</div>
			<div class="row">
				<div class="col-md-6">
					<div class="panel panel-info">
						<div class="panel-heading" style="margin-bottom: 15px;">
							<h2>增加学生信息</h2>
						</div>
						<div class="">
							<div class="carousel slide" id="mycarousel" data-ride = "carousel">
								<!--
					            	描述：幻灯片图片
					           -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/a1.jpg" />
									</div>
									<div class="item ">
										<img src="img/a2.jpg" />
									</div>
									<div class="item ">
										<img src="img/a3.jpg" />
									</div>
								</div>
					            <!--
					            	描述：左右控制
					            -->
					            <a class="left carousel-control" href="#mycarousel"data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left"></span>
								    <span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#mycarousel"data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right"></span>
								    <span class="sr-only">Next</span>
								</a>
							</div>
							<button class="btn btn-lg btn-info"><a href="addStudent.jsp" class="">学生信息</a></button>
						</div>
						<div class="panel-footer">
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel panel-success">
						<div class="panel-heading" style="margin-bottom: 15px;">
							<h2>更改学生信息</h2>
						</div>
						<div class="">
							<div class="carousel slide" id="mycarousel2" data-ride = "carousel">
								<!--
					            	描述：幻灯片图片
					           -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/a4.jpg" />
									</div>
									<div class="item ">
										<img src="img/a5.jpg" />
									</div>
									<div class="item ">
										<img src="img/a6.jpg" />
									</div>
								</div>
					            <!--
					            	描述：左右控制
					            -->
					            <a class="left carousel-control" href="#mycarousel2"data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left"></span>
								    <span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#mycarousel2"data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right"></span>
								    <span class="sr-only">Next</span>
								</a>
							</div>
							<button class="btn btn-lg btn-success"><a href="modifyStudent.jsp" class="">更改信息</a></button>
						</div>
						<div class="panel-footer">
							<p></p>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-6">
					<div class="panel panel-warning">
						<div class="panel-heading" style="margin-bottom: 15px;">
							<h2>删除学生信息</h2>
						</div>
						<div class="">
							<div class="carousel slide" id="mycarouse3" data-ride = "carousel">
								<!--
					            	描述：幻灯片图片
					           -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/a7.jpg" />
									</div>
									<div class="item ">
										<img src="img/a8.jpg" />
									</div>
									<div class="item ">
										<img src="img/a9.jpg" />
									</div>
								</div>
					            <!--
					            	描述：左右控制
					            -->
					            <a class="left carousel-control" href="#mycarouse3"data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left"></span>
								    <span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#mycarouse3"data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right"></span>
								    <span class="sr-only">Next</span>
								</a>
							</div>
							<button class="btn btn-lg btn-warning"><a href="deleteStudent.jsp" class="">删除信息</a></button>
						</div>
						<div class="panel-footer">
							<p></p>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="panel panel-danger">
						<div class="panel-heading" style="margin-bottom: 15px;">
							<h2>查看所有学生信息</h2>
						</div>
						<div class="">
							<div class="carousel slide" id="mycarousel4" data-ride = "carousel">
								<!--
					            	描述：幻灯片图片
					           -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="img/a10.jpg" />
									</div>
									<div class="item ">
										<img src="img/a11.jpg" />
									</div>
									<div class="item ">
										<img src="img/a12.jpg" />
									</div>
								</div>
					            <!--
					            	描述：左右控制
					            -->
					            <a class="left carousel-control" href="#mycarousel4"data-slide="prev">
								    <span class="glyphicon glyphicon-chevron-left"></span>
								    <span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#mycarousel4"data-slide="next">
								    <span class="glyphicon glyphicon-chevron-right"></span>
								    <span class="sr-only">Next</span>
								</a>
							</div>
							<button class="btn btn-lg btn-danger"><a href="viewStudent.jsp" class="">查看信息</a></button>
						</div>
						<div class="panel-footer">
							<p></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

























