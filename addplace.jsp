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
<div id="content"> 
  <div>
    <h3>Admin Added All Party and Place</h3>    
    <form action="Adminplace" method="post" enctype="multipart/form-data">
       
       <table align="center">
       <tr><td>Candidate Name &nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="candidate" required="required"></td></tr>
       <tr><td>Party Place &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text"name="place" required="required"></td></tr>
       <tr><td>Party Symbols&nbsp;</td><td><input type="file" name="symbols" required="required"></td></tr>
       <tr><td>Party Post&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="post" required="required"></td></tr>
       <tr><td>Party Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td><input type="text" name="partyname" required="required"></td></tr>
       </table><br>      
       <p align="center" style="text-align:center"><input type="submit" value="Add Party" id="send" style=" width: 80px; height: 30px;" required="required"></p>
    </form>
  </div>
  <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> <br><br><br><br><br> 
</div>


</body>
</html>
