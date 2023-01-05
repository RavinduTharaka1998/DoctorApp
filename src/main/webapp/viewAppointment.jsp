<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Appointment Page</title>

 		<link rel="stylesheet" href="CSS/viewAppointment.css">
 		
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
		integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
		
        <script src="https://kit.fontawesome.com/dbed6b6114.js"></script>
        
        <link rel = "icon" href = "https://e7.pngegg.com/pngimages/227/83/png-clipart-hospital-hospital-computer-icons-medicine-clinic-clinic-miscellaneous-blue-thumbnail.png">
        
</head>
<body>

		<header class = "header">
            <div class = "head-top">
                <div class = "site-name">
                   <h3><a href="index.jsp">Doctor App</a></h3>
                    <h3><a href="addAppointment.jsp">Add Appointment</a></h3>
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>Your Appointment</h2>
                <br><br>
                
            <table class="table table-bordered" id="table-bordered">
			<thead>
					<tr>
						<th>Appointment_ID</th>
						<th>Your Name</th>
						<th>Phone</th>
						<th>e-Mail</th>
						<th>Address</th>
						<th>Gender</th>
						<th>Blood Group</th>
						<th>Doctor Name</th>
						<th>Hotel Rating</th>
						<th>Appointment Dates</th>
					</tr>
				</thead>
				<tbody>
						<%
						
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
								
								sql = "select * from medical.appointment where id ="+query;
								
							}
							else
							{
								sql = "select * from medical.appointment";
								
							}
							ResultSet rs = stat.executeQuery(sql);
							
						
						
						
							
							while(rs.next())
							{
								%>
							<tr>	
							<td><%=rs.getInt(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=rs.getString(6) %></td>
							<td><%=rs.getString(7) %></td>
							<td><%=rs.getString(8) %></td>
							
							<td><a href='updateAppointment.jsp?id=<%=rs.getInt("id")%>' class="btn btn-success">Update</a></td>
							<td><a href='deleteAppointment.jsp?id=<%=rs.getInt("id")%>' class="btn btn-danger">Delete</a></td>
							</tr>
							<%
							}
							
						}
						catch(Exception e)
						{
							out.println("Exception :"+e.getMessage());
							System.out.println("Error");
							e.printStackTrace();
						}
						%>	
						
					<!-- } -->
				</tbody>
			</table>
            </div>
        </header>
</body>
</html>