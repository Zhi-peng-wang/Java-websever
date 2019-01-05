<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'doreg.jsp' starting page</title>
    
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

		 String username=request.getParameter("uname");
		
		 String psd=request.getParameter("psd");
		
		 String repsd=request.getParameter("repsd");
		
		 
		
		 if(psd.equals(repsd))
		
		 {
		
		  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		
		  String url="jdbc:sqlserver://localhost:1433;DatabaseName=rj1703_wzp";
		
		  Connection conn=DriverManager.getConnection(url,"sa","1");
		
		  Statement state=conn.createStatement();
		
		  ResultSet rs=state.executeQuery("select * from userinfo where name='"+username+"'");
		
		  if(rs.next()){
		
		   out.print("<script language='javascript'>alert('该用户名已经被使用！请重新注册');window.history.back(-1);</script>");
		   
		   state.close();
		   conn.close();
		  } else{
		   rs.close();
		   int i=state.executeUpdate("insert into userinfo(name,password) values('"+username+"','"+psd+"')");
		
		   state.close();
		   conn.close();
		
		   response.sendRedirect("regsuccess.jsp");
		  }
		 }else {
		  out.print("<script language='javascript'>alert('两次输入的密码不一致！请重新注册');window.history.back(-1);</script>");
		 }
%>
  </body>
</html>
































