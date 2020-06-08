<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
<head>
<title>Over all Mayiladuthurai Election Result</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">
</head>
<body>
<div id="header">
  <div>
    
    <div id="navigation">
      <div>
        <ul>
          <li class="current"><a href="index.jsp">Home</a></li>
          <li><a href="login.jsp">Citizen login</a></li>
          <li><a href="register.jsp">New Register</a></li>
          <li><a href="index.jsp">Logout</a></li>
       	  <li><a href="adminhome.jsp">Back</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div id="content">
  <div>
    <h3 align="center">Over all Mayiladuthurai Election Result</h3>    

     <table align="center" border="1" style="color:white">
					<tr>
					<th style="color:black;">Name</th>
					<th style="color:black;">Athaar Number</th>
					<th style="color:black;">KannanVelu</th>
					<th style="color:black;">Manikandan</th>
					<th style="color:black;">Gopalakumar</th>
					<th style="color:black;">Vetrivel</th>
					<th style="color:black;">Kumaravel</th>
					<th style="color:black;">Ganeshan</th>
					<% 
						//String a,b,c,d,e,f,g;
						Class.forName("com.mysql.jdbc.Driver");
						Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","root");
						PreparedStatement query=con.prepareStatement("select * from mayiladuthurai");
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
								String d7=rs.getString(9);
								
					%>
						  <tr>
						   <th style="color:blue;"><%=d0%></th>
						   <th style="color:blue;"><%=d%></th>
						   <th style="color:blue;"><%=d1%></th>
						   <th style="color:blue;"><%=d2%></th>
						   <th style="color:blue;"><%=d3%></th>
						   <th style="color:blue;"><%=d4%></th>						              
				 		   <th style="color:blue;"><%=d5%></th>
						   <th style="color:blue;"><%=d6%></th>
						   
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
