<%-- 
    Document   : viewshipstatus
    Created on : Feb 26, 2017, 12:02:58 AM
    Author     : richa
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html data-ng-app="myApp">  
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
<style>
body {
  margin: auto;
  background: #eaeaea;  
  font-family: 'Open Sans', sans-serif;
}

.info p {
  text-align:center;
  color: #999;
  text-transform:none;
  font-weight:600;
  font-size:15px;
  margin-top:2px
}

.info i {
  color:#F6AA93;
}
form h1 {
  font-size: 18px;
  background: #F6AA93 none repeat scroll 0% 0%;
  color: rgb(255, 255, 255);
  padding: 22px 25px;
  border-radius: 5px 5px 0px 0px;
  margin: auto;
  text-shadow: none; 
  text-align:left
}

form {
  border-radius: 5px;
  max-width:900px;
  width:100%;
  margin: 5% auto;
  background-color: #FFFFFF;
  overflow: hidden;
}

p span {
  color: #F00;
}

p {
  margin: 0px;
  font-weight: 500;
  line-height: 2;
  color:#333;
}

h1 {
  text-align:center; 
  color: #666;
  text-shadow: 1px 1px 0px #FFF;
  margin:50px 0px 0px 0px
}

input {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #eee;
  margin-bottom: 15px;
  width: 75%;
  height: 40px;
  float: left;
  padding: 0px 15px;
}

select {
	width: 92%;
	padding: 5px;
}

a {
  text-decoration:inherit
}

textarea {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #EEE;
  margin: 0;
  width: 75%;
  height: 130px; 
  float: left;
  padding: 0px 15px;
}

.form-group {
  overflow: hidden;
  clear: both;
}

.icon-case {
  width: 35px;
  float: left;
  border-radius: 5px 0px 0px 5px;
  background:#eeeeee;
  height:42px;
  position: relative;
  text-align: center;
  line-height:40px;
}

i {
  color:#555;
}

.contentform {
  padding: 40px 30px;
}

.bouton-contact{
  background-color: #81BDA4;
  color: #FFF;
  text-align: center;
  width: 100%;
  border:0;
  padding: 17px 25px;
  border-radius: 0px 0px 5px 5px;
  cursor: pointer;
  margin-top: 40px;
  font-size: 18px;
}

.leftcontact {
  width:49.5%; 
  float:left;
  border-right: 1px dotted #CCC;
  box-sizing: border-box;
  padding: 0px 15px 0px 0px;
}

.rightcontact {
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 15px;
}

.validation {
  display:none;
  margin: 0 0 10px;
  font-weight:400;
  font-size:13px;
  color: #DE5959;
}

#sendmessage {
  border:1px solid #fff;
  display:none;
  text-align:center;
  margin:10px 0;
  font-weight:600;
  margin-bottom:30px;
  background-color: #EBF6E0;
  color: #5F9025;
  border: 1px solid #B3DC82;
  padding: 13px 40px 13px 18px;
  border-radius: 3px;
  box-shadow: 0px 1px 1px 0px rgba(0, 0, 0, 0.03);
}

#sendmessage.show,.show  {
  display:block;
}
</style>
         <script>
var app=angular.module('myApp',[]);

app.controller('myCtrl', function($scope) {
$scope.firstName = "John";
$scope.lastName = "Doe";

$scope.country_list = ["Afghanistan","Albania","Algeria","Andorra","Angola","Anguilla","Antigua &amp; Barbuda","Argentina","Armenia","Aruba","Australia","Austria","Azerbaijan","Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bermuda","Bhutan","Bolivia","Bosnia &amp; Herzegovina","Botswana","Brazil","British Virgin Islands","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon","Cape Verde","Cayman Islands","Chad","Chile","China","Colombia","Congo","Cook Islands","Costa Rica","Cote D Ivoire","Croatia","Cruise Ship","Cuba","Cyprus","Czech Republic","Denmark","Djibouti","Dominica","Dominican Republic","Ecuador","Egypt","El Salvador","Equatorial Guinea","Estonia","Ethiopia","Falkland Islands","Faroe Islands","Fiji","Finland","France","French Polynesia","French West Indies","Gabon","Gambia","Georgia","Germany","Ghana","Gibraltar","Greece","Greenland","Grenada","Guam","Guatemala","Guernsey","Guinea","Guinea Bissau","Guyana","Haiti","Honduras","Hong Kong","Hungary","Iceland","India","Indonesia","Iran","Iraq","Ireland","Isle of Man","Israel","Italy","Jamaica","Japan","Jersey","Jordan","Kazakhstan","Kenya","Kuwait","Kyrgyz Republic","Laos","Latvia","Lebanon","Lesotho","Liberia","Libya","Liechtenstein","Lithuania","Luxembourg","Macau","Macedonia","Madagascar","Malawi","Malaysia","Maldives","Mali","Malta","Mauritania","Mauritius","Mexico","Moldova","Monaco","Mongolia","Montenegro","Montserrat","Morocco","Mozambique","Namibia","Nepal","Netherlands","Netherlands Antilles","New Caledonia","New Zealand","Nicaragua","Niger","Nigeria","Norway","Oman","Pakistan","Palestine","Panama","Papua New Guinea","Paraguay","Peru","Philippines","Poland","Portugal","Puerto Rico","Qatar","Reunion","Romania","Russia","Rwanda","Saint Pierre &amp; Miquelon","Samoa","San Marino","Satellite","Saudi Arabia","Senegal","Serbia","Seychelles","Sierra Leone","Singapore","Slovakia","Slovenia","South Africa","South Korea","Spain","Sri Lanka","St Kitts &amp; Nevis","St Lucia","St Vincent","St. Lucia","Sudan","Suriname","Swaziland","Sweden","Switzerland","Syria","Taiwan","Tajikistan","Tanzania","Thailand","Timor L'Este","Togo","Tonga","Trinidad &amp; Tobago","Tunisia","Turkey","Turkmenistan","Turks &amp; Caicos","Uganda","Ukraine","United Arab Emirates","United Kingdom","Uruguay","Uzbekistan","Venezuela","Vietnam","Virgin Islands (US)","Yemen","Zambia","Zimbabwe"];

$scope.recipientList = ["Recipient 1","Recipient 2","Recipient 3","Recipient 4","Recipient 5"];
});

</script>
    
  </head>

    <body data-ng-controller="myCtrl">

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
              <li><a href="request.htm?action=updatestatus">Update Shipment</a></li>
              <li class="active"><a href="request.htm?action=viewshipstatus">View Shipment Status</a></li>
                
                
            </ul>
           <ul class="nav navbar-nav navbar-right">
              <li><a href="./">Logout</a></li>
              
            </ul>
              
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
<form style="text-align:center;">
	<div style="padding-top: 15px;">
			    <p style="text-align: center"> <input style="width:50%;border-radius: 5px;margin-left:20px;" type="text" name="requestNumber" data-ng-model="requestNumber" placeholder="Request Number" data-rule="required"/>
                 <input type="submit" value="View Status" style="width:40%;margin-left:20px;border-radius: 5px;"/></p>
     </div>
     </form>  
     <form> 
	<div class="contentform">
    	    	<div class="leftcontact">
			      

            <div class="form-group">
            <p>Part ID</p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<input type="text" name="partId" data-ng-model="partId" data-rule="required"/>
                <div class="validation"></div>
			</div>

			
			<div class="form-group">
			<p>Country</p>			
				<select data-ng-model="country">
				    <option data-ng-repeat="c in country_list" value="{{c}}">{{c}}</option>
				</select>
			</div>	
			
			<div class="form-group">
			<p>License Number</p>		
				<select data-ng-model="liscenseNumber">
				    <option value="yes">Yes</option>
				    <option value="no">No</option>
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
			
			<div class="form-group">
			<p>Part Owner </p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				<input type="text" name="partOwner" data-ng-model="partOwner" data-rule="required"/>
                <div class="validation"></div>
			</div>	

	</div>

	<div class="rightcontact">	

			

			<div class="form-group">
			<p>Recipient Name(s)</p>	
			<select data-ng-model="recipientName" style="margin-bottom: 10px;">
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
	
</form>	
	
      
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/js/jquery.min.js"></script>
    
    <script src="resources/js/bootstrap.min.js"></script>
    
  </body>
</html>
