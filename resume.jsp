<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html>
<head>
	<title>Placement Cell-Resume Samples</title>
	<link rel="stylesheet" type="text/css" href="resume.css">
</head>
<body>	<img class="bg">
<div id="header">
	<h1>Placement Cell</h1>
        <img src="img/logo.png" class="logo" alt="logo">
        <img src="img/ugi.png" class="ugi" alt="ugi logo">
</div>
<div id="menu-bar">
	<div class="menu-btn"><a href="after_login.jsp">Home</a></div>
	<div class="menu-btn-1">
		<span>Upcoming Companies</span>
		<div class="content">
			<p><a href="visited.jsp" class="drop">Visited Companies</a></p>
                        <p><a href="comming.jsp" class="drop">Upcoming Companies</a></p>
			<p><a href="top.jsp" class="drop">Top Companies</a></p>
			<p><a href="high.jsp" class="drop">High Package Companies</a></p>
		</div>
	</div>
	<div class="menu-btn-1">
		<span>Training</span>
		<div class="content">
			<p><a href="pi.jsp" class="drop">PI Questions</a></p>
			<p><a href="#" class="drop">Written Exam</a></p>
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
<h1 class="title">Few Samples of Resume</h1>
            <div>
                <p class="resume_detail">Resume Sample 1<br><small> Click on the download icon to download.</small></p><a class="resume" href="doc/resume1.docx"><img class="vector" src="img/download.png"></a>
                
                <p class="resume_detail">Resume Sample 2<br><small> Click on the download icon to download.</small></p> <a class="resume" href="doc/resume2.docx"><img class="vector" src="img/download.png"></a>
            </div>
</body>
</html>