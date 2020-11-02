<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html>
<head>
	<title>Placement Cell-Visited Companies</title>
	<link rel="stylesheet" type="text/css" href="visited.css">
	<!--<meta http-equiv="refresh" content="5"> -->
</head>
<body>	
	<img class="bg">
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
<hr size="50px" style="background-color: deepskyblue; border-color: navy;position: fixed;top: 205px">
<p class="title">List of Visited Companies in 2020 and selections</p>
<div class="section">
	<div><p class="block-1">Infosys <span>650 students</span></p></div>
	<div><p class="block-1 block-2">HCL <span>226 students</span></p></div>
	<div><p class="block-1">TCS <span>145 students</span></p></div>
	<div><p class="block-1 block-2">Mahindra <span>74 students</span></p></div>
	<div><p class="block-1">Oracle <span>84 students</span></p></div>
	<div><p class="block-1 block-2">Syntel <span>102 students</span></p></div>
	<div><p class="block-1">LG <span>24 students</span></p></div>
	<div><p class="block-1 block-2">Accenture <span>24 students</span></p></div>
	<div><p class="block-1"> L&T Infotech <span>86 students</span></p></div>
	<div><p class="block-1 block-2">L&T Infra <span>51 students</span></p></div>
	<div><p class="block-1">Indian Army <span>112 students</span></p></div>
	<div><p class="block-1 block-2">Indian Navy <span>211 students</span></p></div>
	<div><p class="block-1">Kotak Bank <span>64 students</span></p></div>
</div>
</body>
</html>