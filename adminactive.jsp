<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
<head>
<title>Admin Active Or De_Active</title>
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
          <li><a href="active.jsp">Active Users</a></li>
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
<div id="content">
  <div>
    <h3 align="center">All User Account Active or De_active</h3>   
     <table align="center" border="1" style="color:white">
					<tr>
					<th style="color:black;">Id</th>
					<th style="color:black;">Athaar Number</th>
					<th style="color:black;">Name</th>
					<th style="color:black;">DOB</th>
					<th style="color:black;">Gender</th>
					<th style="color:black;">Address</th>
					<th style="color:black;">Mobile</th>
					<th style="color:black;">Email</th>
					<th style="color:black;">Status</th>
					<th style="color:black;">Action</th>
					<%
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","");
						PreparedStatement query=con.prepareStatement("select * from reg");
						ResultSet rs=query.executeQuery();
						System.out.println("Query is Executed");
						while(rs.next())
						{
								String id=rs.getString(1);
								String card=rs.getString(2);
								String name=rs.getString(3);
								String dob=rs.getString(5);
								String gender=rs.getString(6);
								String address=rs.getString(7);
								String mobile=rs.getString(8);
								String email=rs.getString(9);
								String status=rs.getString(10);
					%>
						  <tr>
						   <th style="color:blue;"><%=id%></th>
						   <th style="color:blue;"><%=card%></th>
						   <th style="color:blue;"><%=name%></th>
						   <th style="color:blue;"><%=dob%></th>
						   <th style="color:blue;"><%=gender%></th>						              
				 		   <th style="color:blue;"><%=address%></th>
				 		   <th style="color:blue;"><%=mobile%></th>
				 		   <th style="color:blue;"><%=email%></th>
				 		   <th style="color:maroon;"><%=status%></th>
				 		   <th><a href="active.jsp?id=<%=id%>&&status=<%=status %>" style="color:green; text-decoration:none;">&nbsp;&nbsp;Active &nbsp;/&nbsp;</a><a href="active.jsp?id=<%=id%>&&status=<%=status %>"style="color:red; text-decoration:none;">De_Active&nbsp;</a></th>					   
						   </tr>
						   <%} %>
					
						</table>  
       
       
           
    <br><br><br><br><br><br><br><br><br><br><br><br>
  </div>
  <marquee>Please select the Place than select your favorite person </marquee>
  <marquee direction="right">Please select the Place than select your favorite person </marquee>
  <br><br><br><br><br> 
</div>

<div id="footer">
  <div>
    <div class="first">
      <h3><a href="#">Ecothunder</a></h3>
      <p>Easy to vote and any time any where accessing and voting for the tamil nadu government election process
      <div>
        <p>Telephone. : <span>12345678-90</span></p>
        <p>Fax : <span>23456789-01</span></p>
        <p>Email : <span>davidmesiya@gmail.com</span></p>
      </div>
    </div>
    <div>
      <h3>Get Social with us!</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
      <div> <a href="#" class="facebook"></a> <a href="#" class="twitter"></a> <a href="#" class="linked-in"></a> </div>
    </div>
    <div>
      <h3>Share your thoughts!</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent placerat eleifend arcu, sit amet rutrum lectus lobortis quis. Donec aliquam</p>
      <form action="#">
        <label for="subscribe">
          <input type="text" id="subscribe" maxlength="30" placeholder="davidmesiya@gmail.com">
        </label>
        <input class="submit" type="submit" value="">
      </form>
      <p>Copyright &copy; 2016 MCA Boys <br>
        <a target="_blank" href="#"></a></p>
    </div>
  </div>
</div>
</body>
</html>
