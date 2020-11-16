<%@page import="com.model.NewRecord"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width,initial-scale=1.0">



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
 
 
 
 <!-- disable/enable script jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 


<style>
.needs-validation{
	margin:100px 100px 50px 100px;
	padding-top: 80px;
}


.content-client-form{
  width: 1100px;
  height: 650px;
  background: #fff;
  margin-top:-270px !important;
  margin-left: 10px;
  border-radius: 10px;
  box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
 }
 
 
  .content-client-form input[type=text]{margin-bottom: 5px;}
 
  .btn-preview{
 	margin:0 0 70px 100px; 
 }
 
.form-control:disabled, .form-control{
	background-color: #fff;
}

</style>

</head>
<body>

 <%
 NewRecord record = (NewRecord) request.getAttribute("record"); 
 System.out.println(record.getCompanyName());
 request.getSession().setAttribute("RecordID", record.getIdentification()); 
 String val = record.getId();
 %>
 
 <input type="checkbox" id="check">


<!--mobile navigation bar start-->
        
            <div class="mobile_nav">
                <div class="nav_bar">
                    <img src="assets/1.png" class="mobile_profile_image" alt="">
                    <i class="fa fa-bars nav_btn"></i>
                </div>
                <div class="mobile_nav_items">
                    <a href="#" ><i class="fas fa-desktop"></i><span>Dashboard</span></a>
                    <a href="#"><i class="fas fa-box"></i><span>New Record</span></a>
                    <a href="viewfile.jsp?id=<%session.setAttribute("id", val);%>" target="_blank"><i class="fas fa-download"></i><span>View Agreement</span></a>
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
                    <a href="#"><i class="fas fa-box"></i><span>New Reocrd</span></a>
                    <a href="viewfile.jsp?id=<%session.setAttribute("id", val);%>" target="_blank"><i class="fas fa-download"></i><span>View Agreement</span></a>
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
                                        
		<div class="content-client-form">
			 <form class="needs-validation" novalidate action = "ChangeRecord" method = "POST" >
			 
	 <div class="row">
			<h3 for="validationCustom01">View the contract here!!!</h3>		 
  			<button class="btn btn-primary btn-lg m-t-13 btn-preview" type="submit"><a href="viewfile.jsp?id=<%session.setAttribute("id", val);%>" style="color: #fff; text-decoration: none;" target="_blank">preview File</a></button>
  	</div>
			 
			  <div class="form-row">
			    <div class="col-md-4 mb-3">
			      <label for="validationCustom01">First name</label>
			      <input type="text" class="form-control" id="validationCustom01" name = "fName" placeholder="First name" value="<%=record.getFirstname() %>"
			        required disabled>
			      <div class="valid-feedback">
			        Looks good!
			      </div>
			    </div>
			    <div class="col-md-4 mb-3">
			      <label for="validationCustom02">Last name</label>
			      <input type="text" class="form-control" id="validationCustom02" name = "lName" placeholder="Last name" value="<%=record.getLastname() %>"
			        required disabled>
			      <div class="valid-feedback">
			        Looks good!
			      </div>
			    </div>
			    <div class="col-md-4 mb-3">
			      <label for="validationCustom04">Phone Number</label>
			      <input type="text" class="form-control" id="validationCustom04" name = "pNum" placeholder="Phone-Number" value="<%=record.getPhone() %>"
			      required disabled>
			      <div class="invalid-feedback">
			        Please provide a valid phone number.
			      </div>
			    </div>
			    </div>
			    
			    <div class="form-row">
			    <div class="col-md-6 mb-3">
			      <label for="validationCustom03">Company name</label>
			      <input type="text" class="form-control" id="validationCustom03" name = "cName" placeholder="Company Name" value="<%=record.getCompanyName() %>"
			      required disabled>
			      <div class="invalid-feedback">
			        Please provide a valid Company name.
			      </div>
			    </div>
			   
			    <div class="col-md-6 mb-3">
			      <label for="validationCustomUsername">Email</label>
			      <div class="input-group">
			        <div class="input-group-prepend">
			          <span class="input-group-text" id="inputGroupPrepend">@</span>
			        </div>
			        <input type="text" class="form-control" id="validationCustomUsername" name = "email" placeholder="Email" value="<%=record.getEmail() %>"
			          aria-describedby="inputGroupPrepend" required disabled>
			        <div class="invalid-feedback">
			          Please choose a email.
			        </div>
			      </div>
			    </div>
			  </div>
			    
			  <div class="form-row">
			    <div class="col-md-12 mb-3">
			      <label for="validationCustom03">Company Address</label>
			      <input type="text" class="form-control" id="validationCustom03" name = "cName" placeholder="Company Address" value="<%=record.getAddress() %>"
			      required disabled>
			      <div class="invalid-feedback">
			        Please provide a valid Address.
			      </div>
			    </div>
			  </div>
			
			  
			   <div class="row">
			                    <div class="col-md-6 no-padding">
			                        <div class="radio_tabs">
			                            <label class="radio_wrap" data-radio="radio_2">
			                                <input type="radio" name="contract" class="input" value="Agree">
			                                <span class="radio_mark">
			                                    Agree
			                                   
			                                </span>
			                            </label>
			                        </div>
			                       <!--  <div class="content rad_2">
			                            <div class="radio_content radio_2">
			                                <div class="row">
			                                    <div class="col-md-12">
			                                        <div class="card border-success mb-3 describe" >
			                                            <div class="card-body">
			                                                <h5 class="card-title header-line-number title-describe text-left">PAY VIA PAYPAL</h5>
			                                                <div class="row">
			                                                    <p class="card-text text-describe ">You can pay using your PayPal Account</p>                                                
			                                                </div>
			                                            </div>
			                                        </div>
			                                    </div>
			                                </div>
			                            </div>
			                        </div> -->
			                    </div>
			            
			                    <div class="col-md-6 no-padding">            
			                        <div class="radio_tabs">
			                            <label class="radio_wrap" data-radio="radio_3">
			                                <input type="radio" name="contract" class="enable_tb input" value="Disagree">
			                                <span class="radio_mark">
			                                    Disagree 
			                                   
			                                </span>
			                            </label>
			                        </div>
			                    </div>
			
			                    <div class="content rad_3">
			                            <div class="radio_content radio_3">
			                               <!--  <div class="row">
			                                    <div class="col-md-12">
			                                        <div class="card border-success mb-3 describe" >
			                                            <div class="card-body">
			                                                <h5 class="card-title header-line-number title-describe text-left">PLEASE SEND YOUR MONEY ORDER TO</h5>
			                                                <div class="row">
			                                                    <p class="card-text text-describe">Blinkee.com.<br> LLC 769 Center BI STE 58, <br>Fairfax CA 94930</p>                                                
			                                                </div>
			                                            </div>
			                                        </div>
			                                    </div>
			                                </div> -->
				                                <div class="form-row form-row-content">
				                                <div class="col-md-12">
													<div class="input-group">
													  <div class="input-group-prepend">
													    <span class="input-group-text">Reason for disagreement</span>
													  </div>
													  <textarea id = "reason" class="form-control" aria-label="With textarea" name="area" required></textarea>
												</div>
											</div>
											</div>
			                            </div>
			                    </div>
			                    <!-- </div> -->
			                </div>
			  
			  <button class="btn btn-primary btn-lg m-t-13" type="submit" value="<%=record.getIdentification()%>">Submit form</button>
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
        
        

        // radio Selection
        $(document).ready(function(){
            /* by default hide all radio_content div elements except first element */
            $(".content .radio_content").hide();
            $(".content .radio_content:first-child").hide();

            /* when any radio element is clicked, Get the attribute value of that clicked radio element and show the radio_content div element which matches the attribute value and hide the remaining tab content div elements */
            $(".radio_wrap").click(function(){
              var current_raido = $(this).attr("data-radio");
              $(".content .radio_content").hide();
              $("."+current_raido).show();              
            });

            $('input[name=contract]').change(function(){
                $(".btn-proceed").css("display", "block");
                $(".content-client-form").css("height", "680px");
            });

        });
    
</script>

 
 <script>
            $('input:radio').click(function() { 
                $("#reason").prop("disabled",true);
                if($(this).hasClass('enable_tb')) {
                    $("#reason").prop("disabled",false);
                }
            });
</script>



</body>
</html>