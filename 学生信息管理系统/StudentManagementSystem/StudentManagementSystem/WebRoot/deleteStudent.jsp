<%@ page language="java" import="java.util.*,StuSelSystem.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deleteStudent.jsp' starting page</title>
    
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

  </head>
  <%request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="StudentUtil" class="StuSelSystem.StudentUtil" scope="page"></jsp:useBean>
	<body>
		<div class="container">
			<h1 class="page-header">删除学生相关信息</h1>
			<div class="table-responsive">
				<table class="table table-striped table-bordered table-hover">
					<tr class="info">
						<th>学号</th>
						<th>班级</th>
						<th>姓名</th>
						<th>性别</th>
						<th>出生日期</th>
						<th>电话</th>
						<th>必修1</th>
						<th>必修2</th>
						<th>选修1</th>
						<th>选修2</th>
						<th>删除</th>
					</tr>
					<%
					
					Collection students=StudentUtil.getAllStudent();
					Iterator it=students.iterator();
					while(it.hasNext())
					{
					    Student temp=(Student)it.next();
						out.println("<tr>");	
						out.println("<td>"+temp.getSid()+"</td>");	
						try
					   {
							out.println("<td>"+temp.getBanji()+"</td>");
							out.println("<td>"+temp.getName()+"</td>");
							out.println("<td>"+temp.getSex()+"</td>");
							out.println("<td>"+temp.getBirth()+"</td>");
							out.println("<td>"+temp.getPhone()+"</td>");
							out.println("<td>"+temp.getBixiu1()+"</td>");
							out.println("<td>"+temp.getBixiu2()+"</td>");
							out.println("<td>"+temp.getXuanxiu1()+"</td>");
							out.println("<td>"+temp.getXuanxiu2()+"</td>");
						}	
					    catch(Exception e)
					   {
					   		e.printStackTrace();
					   }	
						out.println("<td><a href='deleteStudent_do.jsp?sid="+temp.getSid()+"'>删除</a>");
						out.println("</tr>");
					}
			    	 %>
				</table>
				<button class="btn btn-default center-block"><a href="main.jsp" class="list-unstyled">返回</a></button>
			</div>
		</div>
	</body>
</html>



























