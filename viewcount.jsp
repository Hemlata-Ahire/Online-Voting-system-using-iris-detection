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
//request.getSession(true).setAttribute("place", place);

%>

<div id="content"> 
  <div>
    <h3>Admin View Result</h3>    
       <table align="center" border="1">
       <tr align="center" style="color:green">
       <th>Candidate Name</th>
       <th>Party Name</th>
       <th>Party Symbol</th>
       <th>Party Place</th>
       <th>Total Vote</th>     
       <% 
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","");
						PreparedStatement query=con.prepareStatement("SELECT candidate_name, party_place,party_symbol,party_name,COUNT(*)Total_Vote FROM vote WHERE party_place='"+place+"' GROUP BY candidate_name ORDER BY Total_vote DESC; ");
						ResultSet rs=query.executeQuery();
						System.out.println("Query is Executed");
						while(rs.next())
						{
								String candidate=rs.getString("candidate_name");
								String party_name=rs.getString("party_name");
								String party_symbol=rs.getString("party_symbol");
								String Total_vote=rs.getString("Total_vote");
								String party_place=rs.getString("party_place");
								
					%>
						  <tr>
						   <th style="color:blue;"><%=candidate%></th>
						   <th style="color:blue;"><%=party_name%></th>
						   <th style="color:blue;"><%=party_place%></th>
						   <th style="color:blue;"><%=party_symbol%></th>
						   <th style="color:blue;"><%=Total_vote%></th>
						   </tr>
						   <%} %>     
       
       </table>
       </form>
  </div>
  <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> 
</div>


</body>
</html>
