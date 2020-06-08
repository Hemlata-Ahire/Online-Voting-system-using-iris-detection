<!DOCTYPE html>
<%@page import="java.sql.*" %>
<html>
<head>
<title>Nashik City Online Voting</title>
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
          <li><a href="PrintLogin.jsp">Citizen login</a></li>
          <li><a href="register.jsp">New Register</a></li>
          <li><a href="admin.jsp">Admin</a></li>
          <li><a href="#">Contact</a></li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Web camera Coding -->
	<style type="text/css">
		body { font-family: Helvetica, sans-serif; }
		h2, h3 { margin-top:0; }
		form { margin-top: 15px; }
		form > input { margin-right: 15px; }
		#results {border-radius: 10px; float: right;margin: 20px;padding: 20px;border: 1px solid;background: lightgoldenrodyellow; }
	</style>
	
	<div id="results">
		Your captured image will appear here...
	</div>
	<br>
	<h3 style="color: whitesmoke;">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;Live Camera Capture</h3>
        <div id="my_camera">
            
        </div>
        
        <!-- First, include the Webcam.js JavaScript Library -->
	<script type="text/javascript" src="webcam.min.js"></script>
	<!-- Configure a few settings and attach camera -->
	<script language="JavaScript">
		Webcam.set({
			width: 620,
			height: 440,
			image_format: 'jpeg',
			jpeg_quality: 90
		});
		Webcam.attach( '#my_camera' );
	</script>
	<!-- A button for taking snaps -->
	<form>
	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<input type=button value="Take Snapshot" onClick="take_snapshot()" style="
    width: 129px;
    height: 41px;
    border-radius: 5px;
    border: azure;
    background: antiquewhite;
	"/><br><br>
	</form>
	<!-- Code to handle taking the snapshot and displaying it locally -->
	<script language="JavaScript">
            function createImage(src) 
            {
                var img = new Image();
                img.src = src;
                return img;
            }
             var fs = require('fs');
			function take_snapshot()
			{
				// take snapshot and get image data
				Webcam.snap( function(data_uri)
                        {
				// display results in page
				document.getElementById('results').innerHTML =
					'<p style="font-size:15px;">Here is your image:</p>' +
					'<img src="'+data_uri+'"/>';
				document.getElementById('david').value=""+data_uri;
			} );
		}
	</script>
<!--End-->
<div id="content"> 
  <div>
    <h3>Register To The Your Athaar</h3>
    <p>This is website is vote for the Tamil nadu government using local ellection in used for the new technology in the online service</p>
    <form action="Register" method="post" id="register" >
      <div class="first">
        <fieldset>
          <label for="name"><strong>Athaar Number</strong></label>
          <input type="text" maxlength="55" id="name" class="inputtext" name="athaar" required="required">
          <label for="email"><strong>Name</strong></label>
          <input type="text" maxlength="55" id="email" class="inputtext" name="name" required="required">
          <label for="password"><strong>Password</strong></label>
          <input type="password" maxlength="55" id="password" class="inputtext" name="password" required="required">
          <label for="confirmpass"><strong>Date of Birth</strong></label>
          <input type="text" maxlength="55" id="confirmpass" class="inputtext" name="dob" required="required">
          <br><br><br>
          <lable>Citizen New Registration for the Tamil nadu Election</lable>
        </fieldset>
      </div>
      <div>
        <fieldset>
          <label for="completename"><strong>Gender</strong></label>
          <input type="text" maxlength="55" id="completename" class="inputtext" name="gender" required="required">
          <label for="address"><strong>Address</strong></label><br><br>
          <select name="address" style="width: 382px;height: 27px;">
          <%
          		Class.forName("com.mysql.jdbc.Driver");
  				Connection con=DriverManager.getConnection("jdbc:mysql://localhost/online","root","");
  				PreparedStatement query=con.prepareStatement("select party_place from place group by party_place");
  				ResultSet rs = query.executeQuery();
  				while(rs.next())
  				{
  					%>
  						<option><%=rs.getString("party_place") %></option>			
  					<%
  				}
          %>
          </select><br><br>
          
<!--           <input type="text" maxlength="55" id="address" class="inputtext" name="address" required="required"> -->
          <label for="billing"><strong>Mobile</strong></label>
          <input type="text" maxlength="55" id="billing" class="inputtext" name="mobile" required="required">
          <label for="city"><strong>Mail</strong></label>
          <label class="zipcode" for="zipcode"><strong>Zip Code</strong></label>
          <input type="text" maxlength="30" id="city" required="required" name="mail">
          <input type="text" maxlength="30" id="zipcode" class="zipcode" required="required" name="zipcode">
          
<!--           <label for="city"><strong>Image</strong></label> -->
<!--           <label class="zipcode" for="zipcode"><strong>Right Eye</strong></label> -->
          <input type="hidden" maxlength="30" id="david" required="required" name="face" style="width: 333px;height: 20px;">
<!--           <input type="file" maxlength="30" id="zipcode" class="zipcode" name="righteye" required="required"> -->
          <br><br><br>
        </fieldset>
      </div>
      <input type="submit" value="" id="createaccount" required="required">
    </form>
  </div>
</div>

</body>
</html>
