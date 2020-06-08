<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script> 
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
<body>
<div class="main">   
  <div class="header">
    <div class="header_resize">
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="PrintLogin.jsp"><span>Login Citizen</span></a></li>
          <li><a href="register.jsp"><span>New Register</span></a></li>
          <li class="active"><a href="admin.jsp"><span>Admin</span></a></li>
          <li><a href="#"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html">Online Election<span>Voting</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
            <br></br><br />
       <form action="Admin" method="post">
      <h3 align="center">Admin Login</h3>
      <table align="center">
      <tr><td>Admin Name</td><td><input type="text" style="color:blue" name="name" required="required"></input></td></tr>
      <tr><td>Admin Password </td><td><input type="password" style="color:blue" name="password" required="required"></input></td></tr>
      </table>  
            <p align="center"><input type="submit" value="Login" style="weight:200px; height:30px;"></input></p>
      </form>
      <br></br><br></br><br /><br>
      </div>
      </div>
    </div>
  </div>
</body>
</html>
