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
          <li class="current"><a href="place.jsp">Home</a></li>
          <li><a href="chooseplace.jsp">Choose Place</a></li>
          <li><a href="index.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<%@page import="java.sql.*"%>
<%String username=(String)session.getAttribute("temp1"); %>
<div id="content">
  <div>
    <h3>Welcome</h3> <h3 style="color:green"><%=username%></h3>
  </div>	
  <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br>
</div>

</body>
</html>
