<%-- 
    Document   : new
    Created on : Feb 25, 2017, 11:31:10 PM
    Author     : richa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
  <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    
     <title>GE Aviation Hackathon 2017</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    
    <!-- Custom styles for this template -->
    <link href="resources/css/navbar.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/style.css"/>
<script type="text/javascript" src="resources/js/angular.min.js"></script>

        <script type="text/javascript" src="resources/js/controller.js"></script>
<script>
var app=angular.module('myApp',[]);
app.controller('myCtrl', function($scope) {
    $scope.firstName = "John";
    $scope.lastName = "Doe";
});
</script>
<style>
td, th{
    padding: 5px;
}
#testtable{
display: none;
}
#test:hover #testtable
{
 display: block;
}
.wrapper {
  
  margin: 100px 75px 10px 75px;
  padding: 15px 20px;
  position: relative;
  text-align: center;
  width: 200px;
  -webkit-transform: translateZ(0); /* webkit flicker fix */
  -webkit-font-smoothing: antialiased; /* webkit text rendering fix */
}
.wrapper .tooltip {
  background: #1496bb;
  bottom: 100%;
  color: #fff;
  display: block;
  left: -25px;
  margin-bottom: 15px;
  opacity: 0;
  padding: 20px;
  pointer-events: none;
  position: absolute;
  width: 100%;
  -webkit-transform: translateY(10px);
     -moz-transform: translateY(10px);
      -ms-transform: translateY(10px);
       -o-transform: translateY(10px);
          transform: translateY(10px);
  -webkit-transition: all .25s ease-out;
     -moz-transition: all .25s ease-out;
      -ms-transition: all .25s ease-out;
       -o-transition: all .25s ease-out;
          transition: all .25s ease-out;
  -webkit-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
     -moz-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
      -ms-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
       -o-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
          box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
}
/* This bridges the gap so you can mouse into the tooltip without it disappearing */
.wrapper .tooltip:before {
  bottom: -20px;
  content: " ";
  display: block;
  height: 20px;
  left: 0;
  position: absolute;
  width: 100%;
}  
/* CSS Triangles   */
.wrapper .tooltip:after {
  border-left: solid transparent 10px;
  border-right: solid transparent 10px;
  border-top: solid #1496bb 10px;
  bottom: -10px;
  content: " ";
  height: 0;
  left: 50%;
  margin-left: -13px;
  position: absolute;
  width: 0;
}
  
.wrapper:hover .tooltip {
  opacity: 1;
  pointer-events: auto;
  -webkit-transform: translateY(0px);
  -moz-transform: translateY(0px);
  -ms-transform: translateY(0px);
  -o-transform: translateY(0px);
  transform: translateY(0px);
}
/* IE can just show/hide with no transition */
.lte8 .wrapper .tooltip {
  display: none;
}
.lte8 .wrapper:hover .tooltip {
  display: block;
}
<!--
-->
</style>

        
    
  </head>
<body ng-controller="myCtrl">

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
              <li><a href="request.htm?action=validateinvoice">Validate Invoice</a></li>
              <li class="active"><a href="request.htm?action=updatestatus">Update Shipment</a></li>
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

<form class="form-horizontal">
<div id="container">
<div id="validate" style="text-align:center;">
<h1 style="font-family:Cambria;" ><u><span>Update Completed Shipment Status</span></u></h1><br>
<p class="text-align: center"><input type="file" name="url" style="display:inline-block;"/><input class="btn btn-primary" type="submit" value="Update Records"/>
</p> 
</div>
</div>
<div> <br><br>

<table  style="margin:auto; width:1000px;" class="table-hover table-bordered table-striped">
<tr>
<th>
Request No
</th>
<th>
Part ID
</th>
<th>
License no
</th>
<th>
Exp Tag
</th>
<th>
Part_qty
</th>
<th>
Cost per post
</th>
<th>
Total shipment cost
</th>
<th>
Status
</th>
</tr>
<tr>
    <td class="wrapper">kjfkfhdj
    <div class="tooltip">I am a tooltip!</div>
     
     
    </td>
    <td>
     
    </td>
    <td>
     
    </td>
    <td>
     
    </td>
    <td>
     
    </td>
    <td>
     
    </td>
    <td>
     
    </td>
    <td>
     
    </td>
</tr>
</table>
</div>
</form>
      
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    
    <script src="resources/js/bootstrap.min.js"></script>
    
  </body>
</html>
