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
<th>Your Name</th>
<th>Aadhaar Number</th>
<th>Your Place</th>
<th>Vote</th></tr>
		<tr style="color:darkmagenta;">
		<th><%=username%></th>
		<th><%=place%></th>
		<th>NOTA</th>
		<th><a href="notaaction.jsp?username=<%=username%>&&place=<%=place%>" style="color:blue">Nota</a></th></tr>
	</table>
  		</div>
  		<br><br><br><br><br><br><br><br><br><br><br> <br><br><br>
</div>

<div id="david" id="content">


<br><br><br>
</div>
  
<br><br><br><br><br> 
</body>
</html>
