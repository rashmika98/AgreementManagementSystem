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
</head>
<body>

<div id = "container" style="margin-top: 65px">
		<table  class ="table table-hover table-dark table-striped table-bordered mydatadable" style="margin-top: 100px;"align="center" cellpadding="5" cellspacing="5" border="1">
			<thead>
			<tr class = "bg-success">
			
				<th width = "10%">Identification Number</th>
				<th width = "10%">ID</th>
				<th width = "10%">First Name</th>
				<th width = "20%">Last Name</th>
				<th width = "20%">Company</th>
				<th width = "10%">Phone</th>
				<th width = "10%">Email</th>
				<th width = "10%">Address</th>
				<th width = "10%">Username</th>
				<th width = "20%">Password</th>
				<th width = "20%">File</th>
				
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
				<td> <%=record.getId() %> </td>
				<td> <%=record.getFirstname() %> </td>
				<td> <%=record.getLastname() %> </td>
				<td> <%=record.getCompanyName() %> </td>
				<td> <%=record.getPhone() %> </td>
				<td> <%=record.getEmail() %> </td>
				<td> <%=record.getAddress() %> </td>
				<td> <%=record.getUsername() %> </td>
				<td> <%=record.getPassword() %> </td>
				<td><center><a href="viewfile.jsp?id=<%session.setAttribute("id",record.getId());%>">View</a></center></td>
				
			</tr>
				
				<%
				}
			%>
		</tbody>			
			
		</table>
	</div>
	</div>
    


</body>
</html>