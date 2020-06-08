<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>

<%

String id=request.getParameter("id");
String status=request.getParameter("status");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","root");			

if(status.equalsIgnoreCase("deactive"))
{
	PreparedStatement query=con.prepareStatement("update reg set status='active' where id='"+id+"' ");
	query.executeUpdate();
}
else if(status.equalsIgnoreCase("active"))
{
	PreparedStatement query=con.prepareStatement("update reg set status='deactive' where id='"+id+"' ");
	query.executeUpdate();
}

response.sendRedirect("adminactive.jsp");

%>
</body>
</html>