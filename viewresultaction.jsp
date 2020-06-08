<!DOCTYPE html>
<html>
<head>
<title>Add Place</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>
<div id="header">
  <div>
    
    <div id="navigation">
      <div>
        <ul>
          <li class="current"><a href="adminhome.jsp">Home</a></li> 
          <li><a href="adminactive.jsp">Active Users</a></li>
			<li><a href="addplace.jsp">Add Place</a></li>
          <li><a href="viewplace.jsp">View All Place</a></li>
         <li><a href="viewresult.jsp">Voter Result</a></li>
          <li><a href="graph.jsp">Graph</a></li>
          <li><a href="index.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<%@page import="java.sql.*" %>
<%

String place=(String)session.getAttribute("place");
request.getSession(true).setAttribute("place", place);

%>

<div id="content"> 
  <div>
    <h3>Admin View Result</h3>   
    <p style="text-align:center"><a href="viewcount.jsp" style="color:blue; text-decoration:none;">View Result Count</a></p> 
       <table align="center" border="1">
       <tr align="center" style="color:green">
       <th>Id</th>
       <th>Candidate Name</th>
       <th>Party Place</th>
       <th>Party Symbols</th>
       <th>Party Post</th>
       <th>Party Name</th>
       <th>Aadhaar Name</th>
       <th>Voter Name</th>
       <% 
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","");
						PreparedStatement query=con.prepareStatement("select * from vote where party_place='"+place+"' ");
						ResultSet rs=query.executeQuery();
						System.out.println("Query is Executed");
						while(rs.next())
						{
								String d0=rs.getString(1);
								String d=rs.getString(2);
								String d1=rs.getString(3);
								String d2=rs.getString(4);
								String d3=rs.getString(5);
								String d4=rs.getString(6);
								String d5=rs.getString(7);
								String d6=rs.getString(8);
								
					%>
						  <tr>
						   <th style="color:blue;"><%=d0%></th>
						   <th style="color:blue;"><%=d%></th>
						   <th style="color:blue;"><%=d1%></th>
						   <th style="color:blue;"><img src="uploads/<%=d2%>" style="width:30px;height:30px;"></th>
						   <th style="color:blue;"><%=d3%></th>
						   <th style="color:blue;"><%=d4%></th>
						   <th style="color:blue;"><%=d5%></th>	
						   <th style="color:blue;"><%=d6%></th>							   
						   </tr>
						   <%} %>     
       
       </table>
       </form>
  </div>
  <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> 
</div>


</body>
</html>
