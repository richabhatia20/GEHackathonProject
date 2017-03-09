<%-- 
    Document   : new
    Created on : Feb 25, 2017, 9:37:10 PM
    Author     : richa
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="invoiceAutomationApp">
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

    
  </head>

  <body data-ng-controller="invoiceGenerationController">

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
              <li class="active"><a href="request.htm?action=request">Make Request</a></li>
              <li><a href="request.htm?action=validateinvoice">Validate Invoice</a></li>
              <li><a href="request.htm?action=updatestatus">Update Shipment</a></li>
              <li><a href="request.htm?action=viewshipstatus">View Shipment Status</a></li>
                
                
<!--                
              <li><a href="#">Home</a></li>
              <li ><a href="#">Make Request</a></li>
              <li><a href="#">Validate Invoice</a></li>
              <li><a href="#">Update Shipment</a></li>
              <li><a href="#">View Shipment Status</a></li>-->
            </ul>
           <ul class="nav navbar-nav navbar-right">
              <li><a href="./">Logout</a></li>
              
            </ul>
              
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

<form action="createrequest.htm" method="post">
	   <div id="validate" style="text-align:center;">
<h1 style="font-family:Cambria;"><u>Create New Ship Request</u></h1><br>

</p> 
</div>
	    
    <div class="contentform">
    	    	<div class="leftcontact">
			      <div class="form-group">
			        <p>Request Number</p>
			        <span class="icon-case"><i class="fa fa-male"></i></span>
				        <input type="text" name="requestNumber" data-ng-model="requestNumber" data-rule="required"/>
                <div class="validation"></div>
       </div> 

            <div class="form-group">
            <p>Part ID</p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<input type="text" name="partId" data-ng-model="partId" data-rule="required"/>
                <div class="validation"></div>
			</div>

			
			<div class="form-group">
			<p>Country</p>			
<!--				<select data-ng-model="country">
				    <option data-ng-repeat="c in country_list" value="{{c}}">{{c}}</option>
				</select>-->
                        <select data-ng-model="country">
                         <c:forEach items="${requestScope.licenselist}" var="license">
                
                        		
				
				    <option>${license.country}</option>
				
                        
            </c:forEach> 
                        </select>
                        
			</div>	
                    
                    
                   
                    
                    
			
			<div class="form-group">
			<p>License Number</p>		
<!--				<select data-ng-model="liscenseNumber">
				    <option value="yes">Yes</option>
				    <option value="no">No</option>
				</select>-->

                        <select data-ng-model="liscenseNumber">
                         <c:forEach items="${requestScope.licenselist}" var="license">
                
                        		
				
				    <option>${license.license_no}</option>
				
                        
            </c:forEach> 
                        </select>
                        
                                    
			</div>			
			
			<div class="form-group">
			<p>License Category </p>
			<span class="icon-case"><i class="fa fa-home"></i></span>
				<input type="text" name="licenseCategory" data-ng-model="licenseCategory" data-rule="required"/>
                <div class="validation"></div>
			</div>			

			<div class="form-group">
			<p>Part Name </p>
			<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
				<input type="text" name="partName" data-ng-model="partName" data-rule="required"/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>Export Tag </p>
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
				<input type="text" name="exportTag" data-ng-model="exportTag" data-rule="required"/>
                <div class="validation"></div>
			</div>	

	</div>

	<div class="rightcontact">	

			<div class="form-group">
			<p>Part Owner </p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				<input type="text" name="partOwner" data-ng-model="partOwner" data-rule="required"/>
                <div class="validation"></div>
			</div>	

			<div class="form-group">
			<p>Recipient Name(s)</p>	
			<select data-ng-model="recipientName">
				    <option data-ng-repeat="r in recipientList" value="{{r}}">{{r}}</option>
				</select>
		</div>

			<div class="form-group">
			<p>Recipient Address </p>
			<span class="icon-case"><i class="fa fa-info"></i></span>
                <input type="text" name="recipientAddress" data-ng-model="recipientAddress" data-rule="required"/>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>Part Quantity </p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <input type="text" name="partQuantity" data-ng-model="partQuantity" data-rule="required"/>
                <div class="validation"></div>
			</div>
		
			
			<div class="form-group">
			<p>Cost per Part</p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <input type="text" name="costPerPart" data-ng-model="costPerPart" data-rule="required"/>
                <div class="validation"></div>
			</div>
			
			
			<div class="form-group">
			<p>Total Cost</p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <input type="text" name="totalCost" data-ng-model="totalCost" data-rule="required"/>
                <div class="validation"></div>
			</div>
			
			
			<div class="form-group">
			<p>Expiration Date</p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <input type="text" name="expirationDate" data-ng-model="expirationDate" data-rule="required"/>
                <div class="validation"></div>
			</div>
		
	</div>
	</div>
    <input type="hidden" name="action" value="createrequest"> 
<!--<input type="submit" class="bouton-contact" value="Send"/>-->
<input type="submit" class="bouton-contact" value="Send" style="margin-bottom: 0px; padding: 0px;"/>
	
</form>	
      
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    
    <script src="resources/js/bootstrap.min.js"></script>
    
  </body>
</html>
