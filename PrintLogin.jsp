<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<style>
td 
{
    border: darkmagenta;
}
</style>
<title>Login Citizen</title>
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
          <li  class="active"><a href="PrintLogin.jsp"><span>Login Citizen</span></a></li>
          <li><a href="register.jsp"><span>New Register</span></a></li>
          <li><a href="admin.jsp"><span>Admin</span></a></li>
          <li><a href="#"><span>Contact Us</span></a></li>
        </ul>
      </div>
      <div class="logo">
        <h1><a href="index.html">Online Election<span>Vote</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="slider">
            <br></br><br />
       <form action="Upload" method="post" enctype="multipart/form-data">
      <h3 align="center">FingerPrint Verification</h3>
       <table align=center border=1 
       	style="
      	border-radius: 6px;
      	text-align: center;
      	line-height: 3;
      	padding: 8px;
      	border: double;
  		">
           
       <tr><td>User Name</td><td><input type="text"  style="color:blue;border: double;border-color:white" name="name"/></td></tr>
       <tr><td>Choose File&emsp;</td><td><input type="file" style="color:blue;border: double;border-color:white" name="fingerprint" /></td></tr>
       <tr><td align=center colspan=2><input type="submit" value="Verification" style="weight:200px; height:30px;"/></td></tr>
       </table>
		</form>       
       
      <div class="clr">
      </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  </div>
</body>
</html>
