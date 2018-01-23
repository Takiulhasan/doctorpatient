<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Online Doctor Appointment System</title>

<link rel="stylesheet" href="css/reset.css" type="text/css">
<link rel="stylesheet" href="css/styles.css" type="text/css">
<link rel="stylesheet" href="css/style.css">
<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet prefetch" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">



<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0">
</head>
<body>
<div id="container"> 
<header> 
	<div class="width">
    		<h1><a href="#">We Care</a></h1>
	    	<nav>
    			<ul class="sf-menu dropdown sf-js-enabled sf-shadow">
        			<li class="selected"><a href="index.html">Home</a></li>
        			<li><a href="#">Services</a></li>
				<li><a href="#">Contact</a></li>
       			</ul>
			<div class="clear"></div>
    		</nav>
       	</div>

	<div class="clear"></div>   
 </header>
<div class="wrapper">
<form class= "form-group margin-right-5" action="patiSaveServlet" method="post">
 <h2 class="text-center">Registration</h2>
  <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
    <input type="text" class="form-control" name="firstname" placeholder="First Name" value="<%String fn = request.getParameter("firstname"); 
    		if(fn!=null){
    	     out.println(fn); }
    %>">
<%
 String msg = (String)request.getAttribute("msg");
 if(msg!=null){
 out.println(msg);
 }
 %>     
 
  </div>
  <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
         <input type="text" class="form-control" name="lastname" placeholder="Last Name" value="<%String ln = request.getParameter("lastname");
        		 if(ln!=null){
            	 out.println(ln); }
   %>">
 <%
 String msg1 = (String)request.getAttribute("msg1");
 if(msg1!=null){
 out.println(msg1);
 }
 %> 
     
  </div>
  <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
         <input type="text" class="form-control" name="email" placeholder="Email" value="<% String em = request.getParameter("email");
        		 if(em!=null){
                  out.println(em); }
     %>">
<%
 String msg2 = (String)request.getAttribute("msg2");
 if(msg2!=null){
 out.println(msg2);
 }
 %>      
  </div>
  <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
         <input type="password" class="form-control" name="password" placeholder="Password">
<%
 String msg3 = (String)request.getAttribute("msg3");
 if(msg3!=null){
 out.println(msg3);
 }
 %>            
  </div>

   <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
      <input type="password" class="form-control" name="retypepass" placeholder="Retype Password">
<%
 String msg4 = (String)request.getAttribute("msg4");
 if(msg4!=null){
 out.println(msg4);
 }
 %>         
 </div>
  
   <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
         <input type="text" class="form-control" name="contact" placeholder="Contact No" value="<%String con = request.getParameter("contact");
        		 if(con!=null){
                    out.println(con); }
         %>">
<%
 String msg5 = (String)request.getAttribute("msg5");
 if(msg5!=null){
 out.println(msg5);
 }
 %>          
  </div>
  <div class="form-group col-sm-4 col-sm-offset-4">
           <input type="text" class="form-control" id="datepicker" name="dob" placeholder="Date of Birth">
  </div>
   <div class="form-group col-sm-4 col-sm-offset-4">
        <label class="col-sm-4 control-label">Gender</label>
        <div class="col-sm-8">
            <label class="radio-inline"> <input type="radio" name="gender" value="male">Male</label>
            <label class="radio-inline"> <input type="radio" name="gender"value="female">Female</label>
        </div>
    </div>
    
   <div class="form-group margin-right-5 col-sm-4 col-sm-offset-4">
       <button class="btn btn-lg btn-primary btn-block" type="submit">Send</button>  
   </div>
</form>

    </div>
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/superfish.js"></script>

<script type="text/javascript" src="js/custom.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker({
      dateFormat: "yy-mm-dd",
      changeMonth: true,
      changeYear: true
    });
  } );
  </script>

</body>
<footer>
        <div class="footer-content width">
            
            <div class="clear"></div>
        </div>
        <div class="footer-bottom">
            <p>&copy; OurSite 2017. <a href="#">OnlineAppointmentSystem</a></p>
         </div>
    </footer>
</html>