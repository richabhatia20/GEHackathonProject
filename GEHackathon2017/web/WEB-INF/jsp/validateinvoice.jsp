<%-- 
    Document   : validateinvoice
    Created on : Feb 26, 2017, 12:02:41 AM
    Author     : richa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    
     <title>GE Aviation Hackathon 2017</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    
    <!-- Custom styles for this template -->
    <link href="resources/css/navbar.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/style.css"/>
<script type="text/javascript" src="resources/js/angular.min.js"></script>

        
<style>
td, th{
    padding: 5px;
}
</style>        
    
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
             
                <li><a href="home.htm">Home</a></li>
              <li ><a href="request.htm?action=request">Make Request</a></li>
              <li class="active"><a href="request.htm?action=validateinvoice">Validate Invoice</a></li>
              <li><a href="request.htm?action=updatestatus">Update Shipment</a></li>
              <li><a href="request.htm?action=viewshipstatus">View Shipment Status</a></li>
                
                
                
<!--                <li><a href="#">Home</a></li>
              <li><a href="#">Make Request</a></li>
              <li><a href="#">Validate Invoice</a></li>
              <li  class="active"><a href="#">Update Shipment</a></li>
              <li><a href="#">View Shipment Status</a></li>-->
            </ul>
           <ul class="nav navbar-nav navbar-right">
              <li><a href="./">Logout</a></li>
              
            </ul>
              
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
<form method="post" action="newfileSelect.htm" class="form-horizontal">
<div id="container">
<div id="validate" style="text-align:center;">
<h1 style="font-family:Cambria;"><u>Validate Shipment Invoice</u></h1><br>
<p class="text-align: center"><input type="file" name="newfile" />
    <input type="hidden" name = "action" value="newfileSelect" style="float: none; width: 50%;height: 100%;display: inline-block;"/>
    
    <input class="btn btn-primary" type="submit" value="Validate Invoice" style="width: 30%;height: 100%;margin-left: 15px; float: none;"/>
</p> 
</div>
</div>
    </form>
<div> <br><br>
    
<!--    c if -->
    
    
<table  style="margin:auto; width:200px;" class="table-hover table-bordered table-striped">
<tr>
<th>
Parameter
</th>
<th>
Value
</th>
</tr>
<tr>
    <td>
     License no
    </td>
    <td>
     
    </td>
</tr>
<tr>
    <td>
     USML/ECCM no
    </td>
    <td>
     
    </td>
</tr>
<tr>
    <td>
     Recipient Name
    </td>
    <td>
     
    </td>
</tr>
<tr>
    <td>
     Recipient Address
    </td>
    <td>
     
    </td>
</tr>
<tr>
    <td>
     Part ID
    </td>
    <td>
     
    </td>
</tr>
<tr>
    <td>
     Expiration Date
    </td>
    <td>
     
    </td>
</tr>
</table>
</div>

      
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    
    <script src="resources/js/bootstrap.min.js"></script>
    
  </body>
</html>
