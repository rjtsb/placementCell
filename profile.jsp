<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html>
<head>
	<title>Placement Cell-Home</title>
	<!--<meta http-equiv="refresh" content="5">          for refreshing web page--> 
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="profile.css">
</head>
<body >
    
	<img src="img/united.jpg" style="opacity: 0.4; position: absolute; background-position: center; height: 100%; width: 100%;"  class="bg">
<div id="header">
	<h1>Placement Cell</h1>
	<img src="img/logo.png" class="logo">
	<img src="img/ugi.png" class="ugi">
</div>
<div id="menu-bar">
	<div class="menu-btn"><a href="after_login.jsp">Home</a></div>
	<div class="menu-btn-1">
		<span>Company</span>
		<div class="content">
			<p><a href="visited.jsp" class="drop">Visited Companies</a></p>
			<p><a href="comming.jsp" class="drop">Upcoming Companies</a></p>
			<p><a href="top.jsp" class="drop">Top Companies</a></p>
			<p><a href="high.jsp" class="drop">High Package</a></p>
		</div>
	</div>
	<div class="menu-btn-1">
		<span>Training</span>
		<div class="content">
			<p><a href="pi.jsp" class="drop">PI Questions</a></p>
			<p><a href="#" class="drop">Written Exam</a></p>
			<p><a href="resume.jsp" class="drop">Resume Samples</a></p>
		</div>
	</div>
	<div class="menu-btn"><a href="about.html">About-us</a></div>
        <div class="menu-btn-1">
            <span>
            <%
                String email = (String)session.getAttribute("mail");
            String pass = (String)session.getAttribute("password");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webtech", "root","");
                Statement stmt = con.createStatement();
                
                ResultSet rs = stmt.executeQuery("select * from register where email='"+email+"' and password ='"+pass+"'");
            try{
            
                
                if(rs.next()){
                out.println(rs.getString(1)); 
                }
            }
            catch(Exception e){
                out.println(e.getMessage());
            }
            %>
            </span>
            <div class="content">
			<p><a href="logout.jsp" class="drop">Logout</a></p>
		</div>
        </div>
</div>
            <div class="title" ><p class="p">Profile</p></div>       
            <table class="table">
                <tr class="thead">
                <th>Full Name</th>
                <th>Email Id</th>
                <th>Contact No.</th>
                <th>College Name</th>
                <th>College Id</th>
                </tr><br><br>
                
                <tr class="tdata">
                <td><%out.println(rs.getString(1));%></td>
                <td><%out.println(rs.getString(2));%></td>
                <td><%out.println(rs.getString(3));%></td>
                <td><%out.println(rs.getString(5));%></td>
                <td><%out.println(rs.getString(6));%></td>
                </tr>
            </table>
</body>
</html>