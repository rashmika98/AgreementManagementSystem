<%@page import="com.model.NewRecord"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.service.Records"%>
<%@page import="com.service.IRecords"%>
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
 
 <link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">



<style>

.needs-validation{
	/* margin:100px 0 0 0; */
	padding-top: 100px;
}


.content-record-list{
  width: 1100px;
  height: 600px;
  background: #fff;
  margin-top:-250px !important;
  margin-left: 0px;
  border-radius: 10px;
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
                   	<div class="space" style="margin-top: 320px;"></div>
                    
                    <a href="Login1.jsp"><i class="fa fa-power-off"></i><span>logout</span></a>
                </div>
            </div>
            <!--sidebar end-->
            
	<div class = "content"><!-- <div id = "content">   -->
		<div class="container-fluid p-0">
    		<div class="togglebar">
                <span><label for="check" class="test">Toggle Sidebar</label></span>   
            </div>  
                    
			<div class="content-record-list"> 
			<div class="needs-validation">
				<table id="myTable" class ="table table-hover table-dark table-striped table-bordered " style="margin-top: 100px;"align="center" cellpadding="5" cellspacing="5" border="1">
					<thead>
					<tr class = "bg-success">
					
						<th width = "10%">Client ID</th>
						<!-- <th width = "10%">PDF ID</th> -->
						<th width = "10%">First Name</th>
						<th width = "20%">Last Name</th>
						<th width = "20%">Company Name</th>
						<th width = "10%">Phone Number</th>
						<th width = "10%">Email Address</th>
						<!-- <th width = "10%">Address</th>
						<th width = "20%">Password</th>		 -->		
						<th width = "10%">Status</th>
						<!-- <th width = "20%">Reason</th> -->
						<th width = "10%">File</th>
						<th width = "10%">All Details</th>
						
					</tr>	
					</thead>
					<tbody>
					   <%
			            IRecords iRecords = new Records();
							ArrayList<NewRecord> arrayList = iRecords.getRecords();
						
						for(NewRecord record : arrayList){
						%>
						 <tr>
						
						<td> <%=record.getIdentification() %> </td>
						<%-- <td> <%=record.getId() %> </td> --%>
						<td> <%=record.getFirstname() %> </td>
						<td> <%=record.getLastname() %> </td>
						<td> <%=record.getCompanyName() %> </td>
						<td> <%=record.getPhone() %> </td>
						<td> <%=record.getEmail() %> </td>
						<%-- <td> <%=record.getAddress() %> </td> --%>
						<%-- <td> <%=record.getPassword() %> </td> --%>
						<td> <%=record.getStatus() %> </td>
						<%-- <td> <%=record.getReason() %> </td> --%>
						<td><center><a href="viewfile.jsp?id=<%session.setAttribute("id",record.getId());%>" target="_blank" style = "color: #fff">View</a></center></td>
						<%-- <td><button class="editbtn">edit</button></td> --%>
						<td>
							<form method="POST" action="ViewDetails">
							<input type="hidden" value = <%=record.getIdentification() %> name="RecordID"/> <input type="submit"
							value="View Details" class="btn btn-outline-info update-button"/>
							</form>
						</td>
					</tr>
						
						<%
						}
					%>
				</tbody>			
					
				</table>
			 </div>
			</div>
		</div>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        
     <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
     <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    
     <script>
     $(document).ready( function () {
    	    $('#myTable').DataTable();
    	} );
     
     
     $(document).ready(function(){
         $('.nav_btn').click(function(){
           $('.mobile_nav_items').toggleClass('active');
         });
       });
    </script>
</body>
</html>