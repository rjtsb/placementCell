<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html>
<head>
	<title>Placement Cell-Home</title>
	<!--<meta http-equiv="refresh" content="5">          for refreshing web page--> 
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body >
    
	<img src="img/united.jpg" style="opacity: 0.4; position: absolute; background-position: center; height: 100%; width: 100%;"  class="bg">
<div id="header">
	<h1>Placement Cl</h1>
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
            try{
            String email = (String)session.getAttribute("mail");
            String pass = (String)session.getAttribute("password");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webtech", "root","");
                Statement stmt = con.createStatement();
                
                ResultSet rs = stmt.executeQuery("select * from register where email='"+email+"' and password ='"+pass+"'");
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
<hr size="5px" style="background-color: deepskyblue; border-color: navy">
<hr id="divider">
<div id="left-content">
	<h1 id="box-heading">About our work</h1>
	<h2 class="left-content-1">
		<strong>The ultimate goal of Placement Cell is to make all its aspiring students rightly placed in competitively reputed IT and core manufacturing, infrastructure-companies right at the campus itself. Our site gives importance for placement activities, skill-mapping and intensive trainings so as to ensure the students get suitable career choices during and after successfully completing the program.</strong></h2>
		<ul>
			<li class="left-content-1" style="left: 60px;">Here we provide asked questions in Technical as well as HR interviews.</li>
			<li class="left-content-1" style="left: 60px;">Questions related to upcomming written exams are also updated here frequently.</li>
			<li class="left-content-1" style="left: 60px;">One can get every placement activities here.</li>

		</ul>
</div>
<div id="right-content">
	<h1 id="box-heading">Highlights</h1>
        
        <ul class="left-content-1" style="left: 10%;">
            <marquee width="75%" direction="up" height="90%" scrollamount="6">
		<li><p>Placement drive for B.Tech (CS,IT,ECE,EEE) branches for Trainee profile (Date : 2nd March).</p></li><br>
		<li><p>7 students from <strong>United</strong> placed in SvatantraMicrofin. <strong>Congratulations</strong></p></li>
            </marquee>
	</ul>
</div>
<div id="img">
    <marquee width="75%" direction="left" scrollamount="6" style="margin: 0px 50px;">
	<img src="img/infosys.png" class="img-1">
	<img src="img/lt.jpg" class="img-1">
	<img src="img/airtel.jpg" class="img-1">
	<img src="img/tcs.jpg" class="img-1">
	<img src="img/techm.jpg" class="img-1">
	<img src="img/navy.png" class="img-1">
	<img src="img/nucleus.jpg" class="img-1">
	<img src="img/panasonic.png" class="img-1">
        <img src="img/amazon.png" class="img-1">
	<img src="img/byjus.jpeg" class="img-1">
	<img src="img/capitalviwa.jpeg" class="img-1">
	<img src="img/cognizant.png" class="img-1">
	<img src="img/ebizframe.png" class="img-1">
	<img src="img/ksolves.png" class="img-1">
	<img src="img/lido.png" class="img-1">
	<img src="img/mahindra.png" class="img-1">
        <img src="img/niit.jpeg" class="img-1">
	<img src="img/okaya.png" class="img-1">
	<img src="img/oppo.png" class="img-1">
	<img src="img/optimus.png" class="img-1">
	<img src="img/policy.png" class="img-1">
	<img src="img/valuelabs.png" class="img-1">
	<img src="img/webkul.png" class="img-1">
	<img src="img/wipro.jpeg" class="img-1">
    </marquee>
</div>
<div id="footer">
	<p id="footer-para">&copy; Copyrights ~ Project Team 2020</p>
</div>
</body>
</html>