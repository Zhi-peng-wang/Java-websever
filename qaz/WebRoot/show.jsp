<%@ page language="java" import="java.util.*,base.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="bs/js/jquery-3.3.1.min.js" ></script>
		<link rel="stylesheet" href="bs/css/bootstrap.css" />
		<script type="text/javascript" src="bs/js/bootstrap.js" ></script>
  </head>
  <jsp:useBean id="fruitUtil" class="base.fruitUtil" scope="page"></jsp:useBean>
  
  <body>
    <% String sid=request.getParameter("sid");%>
    <div class="container">
    	<h1 class="page-header">查看id为<font color=red><%=sid%></font>的水果信息</h1>
		<table  class="table table-striped table-bordered table-hover">
			<tr>
			<td>id</td><td>水果</td><td>价格</td>
			</tr>
			<%
			Collection fruits=fruitUtil.getFruitBySid(sid);
			Iterator it=fruits.iterator();
			while(it.hasNext())
			{
			    fruit temp=(fruit)it.next();
				out.println("<tr class='warning'>");
				
				
				
				try
			   {
			   		out.println("<td>"+temp.getSid()+"</td>");	
			   		out.println("<td>"+temp.getName()+"</td>");
					out.println("<td>"+temp.getPrice()+"</td>");
				}	
			    catch(Exception e)
			   {
			   		e.printStackTrace();
			   }
				out.println("</tr>");
			}
		
		%>
		</table>
    </div>
	
    
  </body>
</html>



















