<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Appointment</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
		
		<link rel="stylesheet" href="CSS/addAppointment.css">
		
		 <link rel = "icon" href = "https://e7.pngegg.com/pngimages/227/83/png-clipart-hospital-hospital-computer-icons-medicine-clinic-clinic-miscellaneous-blue-thumbnail.png">


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
<%
String ID = null;
String name = null;
String phone = null;
String mail = null;
String address = null;
String gender = null;
String bloodgroup = null;
String doctorname =null;
String date = null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
	String userName = "root";
	String password = "root123";
	String url = "jdbc:mysql://localhost:3306/medical";
	Connection con = DriverManager.getConnection(url,userName,password);
    Statement stat = con.createStatement();  
	String query = request.getParameter("d");
	String sql;
	if(query!=null)
	{
		
		sql = "select * from medical.appointment where id ="+request.getParameter("id");
		System.out.println("Pass");
		
	}
	else
	{
		sql = "select * from medical.appointment";
		
	}
	ResultSet rs = stat.executeQuery(sql);
	

   ID = request.getParameter("id");

	
	while(rs.next())
	{
		
	name =rs.getString(2) ;
	phone =rs.getString(3) ;
	mail =rs.getString(4) ;
	address=rs.getString(5) ;
	gender=rs.getString(6) ;
	bloodgroup=rs.getString(7); 
	doctorname=rs.getString(8);
	date =rs.getString(9) ;
	
	}
	
}
catch(Exception e)
{
	out.println("Exception :"+e.getMessage());
	e.printStackTrace();
}

%>

			<header class = "header">
            <div class = "head-top">
                <div class = "site-name">
                   <h3><a href="index.jsp">Doctor App</a></h3>
                    <h3><a href="viewAppointment.jsp">View Appointment</a></h3>
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>Update Yor Appointment</h2>
                <br><br>
                
				<form action = "UpdateAppoinmentServlet" method = "POST">
				
				 <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Appointment Id</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "id" value="<%= ID %>" readonly>
				  </div> 
				  
                <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Name</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "name" value="<%= name %>">
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Mobile Number</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "phone" id = "phone" value="<%= phone %>" onInput = "checkPhone()">
				     <span id = "check_phone"></span>
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Email address</label>
				    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name = "mail" value="<%= mail %>">
				    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
				  </div>
				  
				   <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Address</label>
				    <input type="textarea" class="form-control"  aria-describedby="emailHelp" name = "address" value="<%= address %>">
				  </div>
				  
				  
				 <%
		 if(gender.equals("male")) {
			 gender = null;
		%>
		          <div class="mb-3">
				  <label for="exampleInputEmail1" class="form-label">Gender</label>
				  <div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio"  value="male" name = "gender" checked>
				  <label class="form-check-label" for="inlineRadio1">Male</label>
				  </div>
				  
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio"  value="female" name = "gender">
					  <label class="form-check-label" for="inlineRadio2">Female</label>
					</div>
				  </div>
		<% }
		
		 else {
			 gender = null;
		%>
		<div class="mb-3">
				  <label for="exampleInputEmail1" class="form-label">Gender</label>
				  <div class="form-check form-check-inline">
				  <input class="form-check-input" type="radio"  value="male" name = "gender" >
				  <label class="form-check-label" for="inlineRadio1">Male</label>
				  </div>
				  
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio"  value="female" name = "gender" checked>
					  <label class="form-check-label" for="inlineRadio2">Female</label>
					</div>
				  </div>
		
		<% } %>
				  
			
				  
				  <div class="mb-3">
				  <label for="exampleInputEmail1" class="form-label">Blood Group</label>
				  <select class="form-select " aria-label="Default select example" name = "bloodgroup">
				      <option value="<%= bloodgroup %>"><%= bloodgroup %></option>
					  <option value="ab">AB</option>
					  <option value="o-">O-</option>
					  <option value="o+">O+</option>
					</select>
				  </div>
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Doctor Name</label>
				    <input type="text" class="form-control"  aria-describedby="emailHelp" name = "doctorname" value="<%= doctorname %>">
				  </div>
				  
				  
				  <div class="mb-3">
				    <label for="exampleInputEmail1" class="form-label">Date</label>
				    <input type="date" class="form-control"  aria-describedby="emailHelp" name = "date" value="<%= date %>">
				  </div>
				  
				  <button type="submit" class="btn btn-success">Update</button>
				</form>
				</div>
				</header>
				
				<script src = "https://code.jQuery.com/jquery-3.6.0.min.js"></script>
</body>
</html>