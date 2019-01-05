<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'check.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    <%
    //获取用户名
    String sUserName = request.getParameter ( "username" );
	//获取密码
	String sPasswd = request.getParameter ( "userpassword" );

	//登记JDBC驱动程序
	Class.forName ( "com.microsoft.sqlserver.jdbc.SQLServerDriver" );
	//链接sql的url
	 String url = "jdbc:sqlserver://localhost:1433;DatabaseName=rj1703_wzp";
	//建立连接
	Connection connection = DriverManager.getConnection ( url, "sa","1" );
	//SQL语句
	String sql = "select * from userinfo where name='" + sUserName + "' and password = '" + sPasswd + "'";

	Statement stmt = connection.createStatement ( );
	ResultSet rs = stmt.executeQuery ( sql ); //返回查询结果

	//如果记录集非空，表明有匹配的用户名和密码，登陆成功
	 if ( rs.next ( ) )
	{
	response.sendRedirect("main.jsp");
	 

	} else
	//否则登录失败
	{
	out.print("<script language='javascript'>alert('没有该用户,请注册！');window.history.back(-1);</script>");
	}

	rs.close ( );
	stmt.close ( );
	connection.close ( );
	%>

  </body>
</html>
























