<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta charset="ISO-8859-1">
        <title>Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="CSS/main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="https://kit.fontawesome.com/dbed6b6114.js"></script>
        <link rel = "icon" href = "https://e7.pngegg.com/pngimages/227/83/png-clipart-hospital-hospital-computer-icons-medicine-clinic-clinic-miscellaneous-blue-thumbnail.png">
    </head>
    <body>
        
        <header class = "header">
            <div class = "head-top">
                <div class = "site-name">
                   
                   <a href="index.jsp"><span>Doctor App</span></a>
                </div>
            </div>

            <div class = "head-bottom flex">
                <h2>... The Best Doctors channeling Web Site ...</h2>
                
                <div class = "gobtn">
                  <a href="viewDoctors.jsp"><button type = "button"  class = " head-btn head-btn1">View Doctors</button></a>
                  <a href="addAppointment.jsp"><button type = "button"  class = "head-btn head-btn2">Appointment</button></a>
                </div>
            </div>
        </header>
    </body>
</html>