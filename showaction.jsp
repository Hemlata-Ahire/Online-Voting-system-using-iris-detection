<!DOCTYPE html>
<html>
<head>
<title>Kumbakonam Place voting</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style1.css">
<link href="css/thumbs2.css" rel="stylesheet" />
    <link href="css/thumbnail-slider.css" rel="stylesheet" type="text/css" />
    <script src="js/thumbnail-slider.js" type="text/javascript"></script>
</head>
<body>
<div id="header">
    <div>
    <%
String a=(String)session.getAttribute("temp1");
%>
Sing in: <lable align="right" style="color:blue"><%=a %></lable>

    
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
  		<h3 align="center">Online Voting</h3>
    	<h4 align="center" class="tab blink" style="color:red">Please Click carefully to The Your Favorite Person</h4>
  		</div>

<%
String symbol=request.getParameter("symbol");
String candidate=request.getParameter("candidate");
String post=request.getParameter("post");
String partyname=request.getParameter("partyname");
String place=request.getParameter("place");

request.getSession(true).setAttribute("symbol", symbol);
request.getSession(true).setAttribute("candidate", candidate);
request.getSession(true).setAttribute("post", post);
request.getSession(true).setAttribute("partyname", partyname);
request.getSession(true).setAttribute("place", place);

%>
<form action="vote.jsp">
<table align="center" style="font-size: 18px;">
<tr><td>Party Symbol</td><td><img src="uploads/<%=symbol%>" style="width: 71px;height: 62px;"></td></tr>
<tr><td>Party Name</td><td><%=partyname%></td></tr>
<tr><td>Party Post</td><td><%=post%></td></tr>
<tr><td>Candidate Name&nbsp;&nbsp;&nbsp;&nbsp;</td><td><%=candidate%></td></tr>
<tr><td>Type Here</td><td><input type="text" name="vote" required="required"></td></tr> 
</table>


<p style="text-align:center"><input type="submit" value="Vote!" placeholder="enter the this name" style="width: 168px;height: 35px;border: violet;background: darkgreen;color: yellow;border-radius: 10px;"><br><br></p>
</form>

<div id="david" id="content">


</div>
<br><br><br><br><br><br><br><br><br><br><br> 
<br><br><br><br><br><br>
</div>
  
  <br><br><br><br><br> 


</body>
</html>
