<!DOCTYPE html>
<html>
<head>
<title>Select your native place for the election</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>
<div id="header">
  <div>
    
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
<%@page import="java.sql.*"%>
<div id="content">
  <div>
    <h3>Please Click to The Your Native Place</h3>
       <form action="Place" method="post">
       <p align="center" style="margin-left: 260px;margin-top: 71px;">Choose Place&nbsp;&nbsp;
        <%
        String name=(String)session.getAttribute("temp1");
        String athar=(String)session.getAttribute("temp2");
        String email=(String)session.getAttribute("email");
        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","root");			
		PreparedStatement query=con.prepareStatement("select * from reg where name='"+name+"' and athaar='"+athar+"' and mail='"+email+"' ");
		ResultSet rs=query.executeQuery();
		if(rs.next())
		{
			%>
				<input type=text name=place required value="<%=rs.getString("address")%>" readonly>
			<%
		}        
        %>
        </p>
        <p align="center" style="margin-left: 400px;"><input type="submit" value="Goto Vote!" id="send" style=" width: 80px; height: 30px;" required="required"></p>
    </form>
  </div>	
  <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br>
</div>

</body>
</html>
