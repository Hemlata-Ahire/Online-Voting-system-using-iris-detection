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
<%@page import="online.mail" %>
<%
String place=request.getParameter("place");
String username=request.getParameter("username");
String aadhaar=(String)session.getAttribute("temp2");
String mail=(String)session.getAttribute("email");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","root"); 		

PreparedStatement q=con.prepareStatement("select * from vote where voter_name='"+username+"' and aadhaar_no='"+aadhaar+"' ");
ResultSet rs=q.executeQuery();
int i=0;
if(rs.next())
	i++;

if(i==0)
{
	PreparedStatement query=con.prepareStatement("insert into vote(candidate_name,party_place,party_symbol,party_posting,party_name,aadhaar_no,voter_name)values ('Nota','"+place+"','nota.jpg','Nota','Nota','"+aadhaar+"','"+username+"')");
	query.executeUpdate();

	out.println("<script type=\"text/javascript\">"); 			 
	out.println("alert(\"Thank You '"+username+"' Your Vote To NOTA\")");
	out.println("</script>");	
	
	
	String message1,message2;
	String em[]= new String[1];
	message1="Your Vote For----->  NOTA    ";		       
    message2="";
    String mess=message1 + message2;
    String subject="Thank You For Voting";
    String fr="otpmessenger";   //with out @gmail.com
    String pw="qawsedrftg";		      // sender password
    em[0]=mail;
    mail mmm=new mail();
    mmm.sendFromGMail(fr, pw, em, subject, mess);
    System.out.println("email "+em[0].toString());
	
	
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.include(request, response);
}
else
{	
	out.println("<script type=\"text/javascript\">"); 			 
	out.println("alert(\"Sorry  '"+username+"' Your are Already Put Vote\")");
	out.println("</script>");	
	RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
	rd.include(request, response);	
}
%>
</body>
</html>