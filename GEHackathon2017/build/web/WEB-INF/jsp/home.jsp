<%-- 
    Document   : new
    Created on : Feb 25, 2017, 9:37:10 PM
    Author     : richa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
     <title>GE Aviation Hackathon 2017</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    
    <!-- Custom styles for this template -->
    <link href="resources/css/navbar.css" rel="stylesheet">

    
  </head>

  <body>

    <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">GE Invoice Automation 2017</a>
          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="request.htm?action=request">Make Request</a></li>
              <li><a href="request.htm?action=validateinvoice">Validate Invoice</a></li>
              <li><a href="request.htm?action=updatestatus">Update Shipment</a></li>
              <li><a href="request.htm?action=viewshipstatus">View Shipment Status</a></li>
            </ul>
           <ul class="nav navbar-nav navbar-right">
              <li><a href="./">Logout</a></li>
              
            </ul>
              
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>Welcome to GE Invoice Automation System 2017!</h1>
        <p>This is a project for Northeastern CCIS GE Hackathon 2017</p>
        <p>
            Team Members:
        <ul>
            <li>Amit Patil <a href="mailto:patil.am@husky.neu.edu?Subject=Hello" target="_top"> patil.am@husky.neu.edu</a></li>
            <li>Richa Bhatia <a href="mailto:bhatia.ri@husky.neu.edu?Subject=Hello" target="_top"> bhatia.ri@husky.neu.edu</a></li>
            <li>Sanket Kumar <a href="mailto:kumar.sank@husky.neu.edu?Subject=Hello" target="_top"> kumar.sank@husky.neu.edu</a></li>
        </ul>
            
        </p>
      </div>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    
    <script src="resources/js/bootstrap.min.js"></script>
    
  </body>
</html>
