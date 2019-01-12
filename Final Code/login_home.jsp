<!DOCTYPE html>
<html>
    <head>
    <%
    if(session.getAttribute("stud")!=null)
	{
		request.getRequestDispatcher("studenthome.jsp").forward(request,response);
		return;
	}
    if(session.getAttribute("teac")!=null)
	{
		request.getRequestDispatcher("teacherhome.jsp").forward(request,response);
		return;
	}
%>
        <title>Get Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/mystyle.css">
        <style>
	body {font-family: Arial, Helvetica, sans-serif;}	
	.container {padding: 16px; }	
	span.psw {
	  float: right;
	  padding-top: 16px;
	}	
	/* The Modal (background) */
	.modal {
	  display: none; /* Hidden by default */
	  position: fixed; /* Stay in place */
	  z-index: 1; /* Sit on top */
	  left: 0;
	  top: 0;
	  width: 100%; /* Full width */
	  height: 100%; /* Full height */
	  overflow: auto; /* Enable scroll if needed */
	  background-color: rgb(0,0,0); /* Fallback color */
	  background-color: rgba(0,0,0,0.7); /* Black w/ opacity */
	  padding-top: 60px;
	}	
	/* Modal Content/Box */
	.modal-content {
	  background-color:rgba(0,0,0,0.5);
	  margin: 5% auto 25% auto; /* 5% from the top, 15% from the bottom and centered */
	  border: 1px solid #2F3A75;
	  width: 50%; /* Could be more or less, depending on screen size */
	}	
	/* Add Zoom Animation */
	.animate {
	  -webkit-animation: animatezoom 0.6s;
	  animation: animatezoom 0.6s
	}	
	@-webkit-keyframes animatezoom {
	  from {-webkit-transform: scale(0)} 
	  to {-webkit-transform: scale(1)}
	}	  
	@keyframes animatezoom {
	  from {transform: scale(0)} 
	  to {transform: scale(1)}
	}	
	/* Change styles for span and cancel button on extra small screens */
	@media screen and (max-width: 300px) {
	  span.psw {
	     display: block;
	     float: none;
	  }
	  .cancelbtn {
	     width: 100%;
	  }
	}
	</style>   
        <script>
            function move_control1()
            {
                window.open("login_student.jsp","_self");
            }
            function move_control2()
            {
                window.open("login_teacher.jsp","_self");
            }
        </script>
    </head>
    <body class="container-fluid" style="background-image: url('img/pic2.jpg');background-repeat: no-repeat; background-size: cover; height: 700px;align-content: center">
        <div class="row" style="width: 100%;height: 100px;background-color: rgba(1,31,71,0.6); border-radius: 10px 50px 10px 50px;">
            <div class="col">
                <p class="h1" ><a href="index.jsp" style="text-decoration:none;color:white;font-size: 80px;margin-left: 15px;">GetAnswer</a></p>
            </div>  
            <div class="col"></div>
            <div class="col"></div>
            <div class="col">
                <div class="row" style="height: 25px;"></div>
                <div class="row">
                    <div class="col"></div>
                    <div class="col">
                        <button id="b1" onclick="document.getElementById('id01').style.display='block'"> 
                            Login
                        </button>
                    </div>                    
                </div>
            </div>
        </div>
        <div class="row" style="margin-top: 100px; height:310px; ">
            <div class="col"></div>
            <div class="col" style="background-color: rgba(0, 0, 0, 0.7); border-radius: 10px 60px 10px 60px; color:white; padding: 15px; font-size: 18px;">
                <p align="justify">
                    Ask a Question<br>
                    If you are desired to ask a question then go ahead and ask 
                    from the stream professors and teachers of various institutes
                    so that you will get your complete solution with a brief description from the stream masters
                </p>
                <p align="justify">
                    Give the answer<br>
                    If you are desired to solve someone's problem then go ahead and perform your work, many students are waiting for you!
                    Guide them towards the correct path and also improve your knowledge sharing skills.
                </p>
            </div>                      
            <div class="col"></div>
        </div>  
        <div class="row" style="height:220px;"></div>
        <div id="id01" class="modal">		  
            <form class="modal-content animate">
		<div class="container" align="center">
                    <button type="button" class="btn btn-primary" onclick="move_control1()">You are a Student</button>
                    <button type="button" class="btn btn-primary" onclick="move_control2()">You are a Teacher</button>
                </div>
            </form>
	</div>
        <div class="row" style="height: 50px;color:white; background-color: #011F47;">
            <div class="col"></div>
            <p style="font-size:20px;">Jayant Sharma</p>
            <div class="col"></div>
        </div>
        <script>            
        // Get the modal
        var modal = document.getElementById('id01');
        // When the user clicks anywhere outside of the modal, close it
        window.onclick = function(event) 
        {
            if (event.target == modal) {
            modal.style.display = "none";
            }
        }
       </script>
    </body>
</html>