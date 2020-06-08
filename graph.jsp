<!DOCTYPE html>
<html>
<head>
<title>Admin Election Result</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>
<div id="header">
  <div>
    
    <div id="navigation">
      <div>
        <ul>
          <li><a href="adminhome.jsp">Home</a></li> 
          <li><a href="adminactive.jsp">Active Users</a></li>
			<li><a href="addplace.jsp">Add Place</a></li>
          <li><a href="viewplace.jsp">View All Place</a></li>
         <li><a href="viewresult.jsp">Voter Result</a></li>
          <li  class="current"><a href="graph.jsp">Graph</a></li>
          <li><a href="index.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<%@page import="java.sql.*"%>
<div id="content">
  <div>
    <h3>Admin View Election Result Graph</h3>
       <form action="graphresult.jsp">
       <p align="center" style="margin-left: 260px;margin-top: 71px;">Choose Place&nbsp;&nbsp;
       <select name="place" style=" width: 200px;" required="required">
       <option value="empty">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;---Select one---</option>
        <%
        Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","");			
		PreparedStatement query=con.prepareStatement("select party_place from vote group by party_place");
		ResultSet rs=query.executeQuery();
		while(rs.next())
		{
			%>
			<option value="<%=rs.getString("party_place")%>"><%=rs.getString("party_place")%></option>
			<%
		}        
        %>       
        </select></p>
        <p align="center" style="margin-left: 400px;"><input type="submit" value="Goto Vote!" id="send" style=" width: 80px; height: 30px;" required="required"></p>
    </form>
  </div>	
  <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br>
</div>

</body>
</html>
