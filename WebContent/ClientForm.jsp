<%@page import="com.model.NewRecord"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width,initial-scale=1.0">

<!-- Bootstrap CDN -->
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
 <!-- disable/enable script jQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script> 


<style>
.needs-validation{
	margin:100px;
}
</style>

</head>
<body>

 <%
 NewRecord record = (NewRecord) request.getAttribute("record"); 
 System.out.println(record.getCompanyName());
 %>
 
 <form class="needs-validation" novalidate action = "AddRecord" method = "POST" enctype="multipart/form-data">
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
    </div>
    <div class="form-row">
    
    </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Company Address</label>
      <input type="text" class="form-control" id="validationCustom03" name = "cName" placeholder="Company Address" value="<%=record.getAddress() %>"
      required disabled>
      <div class="invalid-feedback">
        Please provide a valid Address.
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
      <label for="validationCustom04">Phone Number</label>
      <input type="text" class="form-control" id="validationCustom04" name = "pNum" placeholder="Phone-Number" value="<%=record.getPhone() %>"
      required disabled>
      <div class="invalid-feedback">
        Please provide a valid state.
      </div>
    </div>
    </div>
    <div class="form-row">
    <div class="col-md-4 mb-3">
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
  
  
   <div class="row">
                    <div class="col-md-6 no-padding">
                        <div class="radio_tabs">
                            <label class="radio_wrap" data-radio="radio_2">
                                <input type="radio" name="payment" class="input">
                                <span class="radio_mark">
                                    Agree
                                    <i class="fab fa-paypal fa-2x"></i>
                                    <i class="fab fa-cc-paypal fa-2x"></i>
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
                                <input type="radio" name="payment" class="input">
                                <span class="radio_mark">
                                    Disagree 
                                    <i class="fas fa-money-check-alt fa-2x"></i>
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
										  <textarea class="form-control" aria-label="With textarea" required></textarea>
									</div>
								</div>
								</div>
                            </div>
                    </div>
                    <!-- </div> -->
                </div>
  
  <button class="btn btn-primary btn-sm" type="submit">Submit form</button>
</form>

<%String val = record.getId(); %>
  <button class="btn btn-primary btn-sm" type="submit"><a href="viewfile.jsp?id=<%session.setAttribute("id", val);%>" style="color: #fff; text-decoration: none">preview File</a></button>
  <!-- <button class="btn btn-primary btn-sm" type="submit">Download File</button> -->
    
 <script>
        
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

            $('input[name=payment]').change(function(){
                $(".btn-proceed").css("display", "block");
            });

        });
    
</script>

 
 



</body>
</html>