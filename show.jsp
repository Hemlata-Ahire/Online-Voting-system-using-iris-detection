<!DOCTYPE html>
<html>
<head>
<title>Mayiladuthurai Place voting</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">

</head>
<body>
<div id="header">
  <div>
    <%String username=(String)session.getAttribute("temp1");%>
Sing in: <lable align="right" style="color:blue"><%=username %></lable>

    
    <div id="navigation">
      <div>
        <ul>
          <li><a href="place.jsp">Home</a></li>
          <li class="current"><a href="chooseplace.jsp">Choose Place</a></li>
          <li><a href="index.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Blink coding for the css -->
<%@page import="java.sql.*" %>
<style type "text/css">
<!--
/* @group Blink */
.blink {
	-webkit-animation: blink .55s linear infinite;
	-moz-animation: blink .45s linear infinite;
	-ms-animation: blink .55s linear infinite;
	-o-animation: blink .55s linear infinite;
	 animation: blink .88s linear infinite;
}
@-webkit-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-moz-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-ms-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@-o-keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
@keyframes blink {
	0% { opacity: 1; }
	50% { opacity: 1; }
	50.01% { opacity: 0; }
	100% { opacity: 0; }
}
</style>
		<div id="content">
  		<div>
  		<h3 align="center">This is Mayiladuthurai Place Vote</h3>
    	<h4 align="center" class="tab blink" style="color:red">Please Click carefully to The Your Favorite Person</h4>
  		
  		<%String place=(String)session.getAttribute("place"); %>

<table align="center" border="1">
<tr>
<th>Party Symbol</th>
<th>Party Name</th>
<th>Candidate Name</th>
<th>Type Name</th></tr>
<%
	Class.forName("com.mysql.jdbc.Driver"); 
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","root");	 		
	PreparedStatement query=con.prepareStatement("select * from place where party_place='"+place+"' || party_place='Nota' "); 
	ResultSet rs=query.executeQuery();
	while(rs.next())
	{
		String post=rs.getString("party_posting");
		%>
		<tr>
		<th><img src="uploads/<%=rs.getString("party_symbol")%>" style="width: 57px;height: 50px;"></th>
		<th><%=rs.getString("party_name")%></th>
		<th><%=rs.getString("candidate_name")%></th>
		<th><a href="showaction.jsp?symbol=<%=rs.getString("party_symbol")%>&&partyname=<%=rs.getString("party_name")%>&&candidate=<%=rs.getString("candidate_name")%>&&post=<%=post%>&&place=<%=place%>" style="text-decoration:none;">Vote</a></th>
	<%}%>
	</table>
<h3><a href="nota.jsp" style="text-decoration:none;">Nota</a></h3>
  		</div>
  		<br><br><br><br><br><br><br><br><br><br><br> <br><br><br>
</div>

<div id="david" id="content">


<br><br><br>
</div>
  
<br><br><br><br><br> 
</body>
</html>
