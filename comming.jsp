<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html>
<head>
	<title>Placement Cell-Upcoming Companies</title>
	<link rel="stylesheet" type="text/css" href="comming.css">
</head>
<body>	<img class="bg">
<div id="header">
	<h1>Placement Cell</h1>
	<img src="img/logo.png" class="logo">
	<img src="img/ugi.png" class="ugi">
</div>
<div id="menu-bar">
	<div class="menu-btn"><a href="after_login.jsp">Home</a></div>
	<div class="menu-btn-1">
		<span>Upcoming Companies</span>
		<div class="content">
			<p><a href="visited.jsp" class="drop">Visited Companies</a></p>
			<p><a href="top.jsp" class="drop">Top Companies</a></p>
			<p><a href="high.jsp" class="drop">High Package Companies</a></p>
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
			<p><a href="profile.jsp" class="drop">Profile</a></p>
			<p><a href="logout.jsp" class="drop">Logout</a></p>
		</div>
        </div>
</div>
<h1 class="title">List of Upcoming Companies in 2020</h1>
<div class="section">
	<div class="block-1"><span>SQUARE YARDS</span><p>B.Tech, MBA 27 Feb 2020</p></div>
	<div class="block-2"><span>ASAHI INDIA GLASS LTD</span><p>B.Tech(ME,EE) 26 Feb 2020</p></div>
	<div class="block-3"><span>SVATANTRA MICROFIN</span><p>MBA 24 Feb 2020</p></div>
	<div class="block-4"><span>EASTERN SOFTWARE SYSTEM PVT LTD</span><p>B.Tech (CS/IT) 18 Feb 2020</p></div>
	<div class="block-5"><span>TOPPER</span><p>All Branches 13 Feb 2020</p></div>
	<div class="block-6"><span>OKAYA INFOCOM PVT LTD</span><p>B.Tech 15 & 16 Feb 2020</p></div>
</div>
</body>
</html>