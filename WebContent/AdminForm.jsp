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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<style>
.needs-validation{
	margin:100px;
}
</style>

</head>
<body>

<form class="needs-validation" novalidate action = "AddRecord" method = "POST" enctype="multipart/form-data">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">Identification Number</label>
      <input type="text" class="form-control" id="validationCustom01" name = "idNum" placeholder="Identification Number" 
        required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">First name</label>
      <input type="text" class="form-control" id="validationCustom01" name = "fName" placeholder="First name" 
        required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom02">Last name</label>
      <input type="text" class="form-control" id="validationCustom02" name = "lName" placeholder="Last name" 
        required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    </div>
    
    
    
    
    
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Company name</label>
      <input type="text" class="form-control" id="validationCustom03" name = "cName" placeholder="Company Name" required>
      <div class="invalid-feedback">
        Please provide a valid Company name.
      </div>
    </div>
    <div class="col-md-6 mb-3">
      <label for="validationCustom04">Phone Number</label>
      <input type="text" class="form-control" id="validationCustom04" name = "pNum" placeholder="Phone-Number" required>
      <div class="invalid-feedback">
        Please provide a valid state.
      </div>
    </div>
    </div>
    <div class="form-row">
    <div class="col-md-12 mb-3">
      <label for="validationCustom03">Company Address</label>
      <input type="text" class="form-control" id="validationCustom03" name = "cAddress" placeholder="Company Address" required>
      <div class="invalid-feedback">
        Please provide a valid Address.
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
        <input type="text" class="form-control" id="validationCustomUsername" name = "email" placeholder="Email"
          aria-describedby="inputGroupPrepend" required>
        <div class="invalid-feedback">
          Please choose a email.
        </div>
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">User Name</label>
      <input type="text" class="form-control" id="validationCustom01" name = "uName" placeholder="User name" 
        required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">Password</label>
      <input type="password" class="form-control" id="validationCustom01" name = "pWord" placeholder="Password" 
        required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
  </div>
  <div class="custom-file">
    <input type="file" class="custom-file-input" id="validatedCustomFile" name = "fileName" required>
    <label class="custom-file-label" for="validatedCustomFile">Choose file...</label>
    <div class="invalid-feedback">Example invalid custom file feedback</div>
  </div>
  <button class="btn btn-primary btn-sm" type="submit">Submit form</button>
</form>
    
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