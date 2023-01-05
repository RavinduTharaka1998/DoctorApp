<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Appointment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
		
		<link rel="stylesheet" href="CSS/deleteAppointment.css">
		
		 <link rel = "icon" href = "https://e7.pngegg.com/pngimages/227/83/png-clipart-hospital-hospital-computer-icons-medicine-clinic-clinic-miscellaneous-blue-thumbnail.png">
</head>
<body>
<%
   String ID = null;

   ID = request.getParameter("id");

%>

			<header class = "header">
            <div class = "head-top">
                <div class = "site-name">
                   <h3><a href="index.jsp">Doctor App</a></h3>
                    <h3><a href="viewAppointment.jsp">View Appointment</a></h3>
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>Delete Yor Appointment</h2>
                
                <P>Are You Sure to Delete the Record</P>
                <br><br>
                
				<form action = "DeleteServ" method = "POST">
				
				 <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Appointment Id</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "id" value="<%= ID %>" readonly>
				  </div> 
				  
				  <button type="submit" class="btn btn-danger">Delete</button>
				</form>
				</div>
				</header>
</body>
</html>