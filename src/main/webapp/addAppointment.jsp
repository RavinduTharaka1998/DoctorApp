<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Page</title>

 		<link rel="stylesheet" href="CSS/addAppointment.css">
 		
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
        <script src="https://kit.fontawesome.com/dbed6b6114.js"></script>
        
        <link rel = "icon" href = "https://e7.pngegg.com/pngimages/227/83/png-clipart-hospital-hospital-computer-icons-medicine-clinic-clinic-miscellaneous-blue-thumbnail.png" >
        
        
        <script>
        
        function checkPhone() {
  		  
            
            var phone = document.getElementById("phone").value;


            if (phone.length != 10) {

                $("#check_phone").html('Enter Valide Phone Number');
               
            } 

            else {
                $("#check_phone").html('');
            }
        }
        </script>
        
</head>
<body>

		<header class = "header">
            <div class = "head-top">
                <div class = "site-name">
                   <h3><a href="index.jsp">Doctor App</a></h3>
                    <h3><a href="viewAppointment.jsp">View Appointment</a></h3>
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>Appointment</h2>
                <br><br>
                <form action = "AddAppoinmentServlet" method = "POST">
                <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Name</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "name" required >
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Mobile Number</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "phone" id = "phone" onInput = "checkPhone()" required >
				    <span id = "check_phone"></span>
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name = "mail" required >
				    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				  </div>
				  
				   <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Address</label>
				    <input type="textarea" class="form-control"  aria-describedby="emailHelp" name = "address" required >
				  </div>
				  
				  <div class="mb-3">
				  <label for="exampleInputEmail1" class="form-label">Gender</label>
				  <div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio"  value="male" name = "gender">
				  <label class="form-check-label" for="inlineRadio1">Male</label>
				  </div>
				  
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio"  value="female" name = "gender">
					  <label class="form-check-label" for="inlineRadio2">Female</label>
					</div>
				  </div>
				  
				  <div class="mb-3">
				  <label for="exampleInputEmail1" class="form-label">Blood Group</label>
				  <select class="form-select " aria-label="Default select example" name = "bloodgroup" required >
					  <option value="ab">AB</option>
					  <option value="o-">O-</option>
					  <option value="o+">O+</option>
					</select>
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Doctor Name</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "doctorname" required >
				  </div>
				  
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Date</label>
				    <input type="date" class="form-control"  aria-describedby="emailHelp" name = "date" required>
				  </div>
				  
				  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
                
              
            </div>
        </header>
        
        <scrip src = "Script/scrit.js"></scrip>
        <script src = "https://code.jQuery.com/jquery-3.6.0.min.js"></script>
</body>
</html>