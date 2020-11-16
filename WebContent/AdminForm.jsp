<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- Bootstrap CDN -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>



<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Images/icons/evi.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Views/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="Views/util.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Views/dashSidebar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<!--===============================================================================================-->
 

<style>
.needs-validation{
	margin:100px;
	padding-top: 100px;
}


.content-admin-form{
  width: 1100px;
  height: 600px;
  background: #fff;
  margin-top:-250px !important;
  margin-left: 10px;
  border-radius: 10px;
  box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
 }
 
 .content-admin-form input[type=text]{margin-bottom: 5px;}


</style>

</head>
<body>
<input type="checkbox" id="check">


<!--mobile navigation bar start-->
        
            <div class="mobile_nav">
                <div class="nav_bar">
                    <img src="assets/1.png" class="mobile_profile_image" alt="">
                    <i class="fa fa-bars nav_btn"></i>
                </div>
                <div class="mobile_nav_items">
                    <a href="#" ><i class="fas fa-desktop"></i><span>Dashboard</span></a>
                    <a href="AdminForm.jsp"><i class="fas fa-box"></i><span>New Record</span></a>
                    <a href="RecordList.jsp"><i class="fas fa-download"></i><span>Client Details</span></a>
                    <a href="Login1.jsp"><i class="fa fa-power-off"></i><span>logout</span></a>
                </div>
            </div>
            
            <!--mobile navigation bar end-->
            
            <!--sidebar start-->
                <div class="sidebar">
                    <div class="profile_info">
                        <img src="Images/evi.png" class="profile_image" alt="">
                    </div>
                    <a href="#"><i class="fas fa-desktop"></i><span>Dashboard</span></a>
                    <div class="icon-margin"></div>
                    <a href="AdminForm.jsp"><i class="fas fa-box"></i><span>New Reocrd</span></a>
                    <a href="RecordList.jsp"><i class="fas fa-download"></i><span>Client Details</span></a>
                   	<div class="space" style="margin-top: 120px;"></div>
                    
                    <a href="Login1.jsp"><i class="fa fa-power-off"></i><span>logout</span></a>
                	<div class="space" style="margin-bottom: 40px;"></div>
                </div>
            </div>
            <!--sidebar end-->
            
           
           
			<div class="content">
            	<div class="container-fluid p-0">
            		<div class="togglebar">
                        <span><label for="check" class="test">Toggle Sidebar</label></span>   
                    </div>  
                    
						<div class="content-admin-form">
					
							<form class="needs-validation" novalidate action = "AddRecord" method = "POST" enctype="multipart/form-data">
								<div class="form-row">
								    <div class="col-md-4 mb-3">
								      <label for="validationCustom01">Identification Number</label>
								      <input type="text" class="form-control" id="validationCustom01" name = "idNum" pattern="[0-9]{5}" placeholder="Identification Number" 
								        required>
								      <div class="valid-feedback">
								        Looks good!
								      </div>
								      <div class="invalid-feedback">
								        Please provide a valid Identification Number(5 digits).
								      </div>
								    </div>
								    <div class="col-md-4 mb-3">
								      <label for="validationCustom01">First name</label>
								      <input type="text" class="form-control" id="validationCustom01" name = "fName" placeholder="First name" 
								        required>
								      <div class="valid-feedback">
								        Looks good!
								      </div>
								      <div class="invalid-feedback">
								        Please provide a valid First name.
								      </div>
								    </div>
								    <div class="col-md-4 mb-3">
								      <label for="validationCustom02">Last name</label>
								      <input type="text" class="form-control" id="validationCustom02" name = "lName" placeholder="Last name" 
								        required>
								      <div class="valid-feedback">
								        Looks good!
								      </div>
								      <div class="invalid-feedback">
								        Please provide a valid Last name.
								      </div>
								    </div>
								</div>
								<div class="form-row">
								  <div class="col-md-7 mb-3">
								    <label for="validationCustom03">Company name</label>
								    <input type="text" class="form-control" id="validationCustom03" name = "cName" placeholder="Company Name" required>
								    <div class="invalid-feedback">
								      Please provide a valid Company name.
								    </div>
								  </div>
								  
								  <div class="col-md-5 mb-3">
								    <label for="validationCustomUsername">Email</label>
								    <div class="input-group">
								      <div class="input-group-prepend">
								        <span class="input-group-text" id="inputGroupPrepend">@</span>
								      </div>
								      <input type="text" class="form-control" id="validationCustomUsername" name = "email" placeholder="Email"
								        aria-describedby="inputGroupPrepend" required>
								      <div class="invalid-feedback">
								        Please choose a email.
								      </div>
								    </div>
								  </div>
								  </div>
								<div class="form-row">
									    <div class="col-md-7 mb-3">
									      <label for="validationCustom03">Company Address</label>
									      <input type="text" class="form-control" id="validationCustom03" name = "cAddress" placeholder="Company Address" required>
									      <div class="invalid-feedback">
									        Please provide a valid Company Address.
									      </div>
									    </div>
									    <div class="col-md-5 mb-3">
									      <label for="validationCustom04">Phone Number</label>
									      <input type="text" class="form-control" id="validationCustom04" name = "pNum" placeholder="Phone-Number" required>
									      <div class="invalid-feedback">
									        Please provide a valid Phone number.
									      </div>
								    	</div>
									</div>   
							 
							   
							   <label for="validationCustomUsername">Agreement File</label>	   
								<div class="custom-file">
							    <input type="file" class="custom-file-input" id="validatedCustomFile" name = "fileName" required>
							    <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
							    <div class="invalid-feedback">Example invalid custom file feedback</div>
							  </div>
								 
							  <button class="btn btn-primary btn-lg m-t-13" type="submit">Add New Record</button>
							</form>
						    
					</div>	    
				    
			    </div>
 			</div>
 
 <script>
 
 $(document).ready(function(){
     $('.nav_btn').click(function(){
       $('.mobile_nav_items').toggleClass('active');
     });
   });
        
        (function() {
			'use strict';
			window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
			form.addEventListener('submit', function(event) {
			if (form.checkValidity() === false) {
			event.preventDefault();
			event.stopPropagation();
			}
			form.classList.add('was-validated');
			}, false);
			});
			}, false);
		})();
 
</script>

<script>
	// Add the following code if you want the name of the file appear on select
	$(".custom-file-input").on("change", function() {
	  var fileName = $(this).val().split("\\").pop();
	  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
	});
</script>




</body>
</html>