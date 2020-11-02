<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.websocket.Session"%>
<!DOCTYPE html>
<html>
<head>
	<title>Placement Cell-PI Questions</title>
	<link rel="stylesheet" type="text/css" href="pi.css">
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
			<p><a href="visited.jsp" class="drop">Visited Companies</a></p>
			<p><a href="comming.jsp" class="drop">Upcoming Companies</a></p>
			<p><a href="top.js" class="drop">Top Companies</a></p>
			<p><a href="high.jsp" class="drop">High Package Companies</a></p>
		</div>
	</div>
	<div class="menu-btn-1">
		<span>Training</span>
		<div class="content">
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

    <div class="sec">
            <h1 class="title">HR Questions</h1>
            <ul>
                    <li class="que">Introduce yourself. <small>or</small> Tell me something about you.</li>
                    <li class="que">Tell me about your Hobbies.</li>
                    <li class="que">Tell me your interests.</li>
                    <li class="que">Do you have problems in relocation?</li>
                    <li class="que">What are you future goals?</li>
                    <li class="que">What would you prefer Job/Higher Education?</li>
                    <li class="que">Why you applied for this job? <small>or</small>Why are you interested for XYZ company?</li>
                    <li class="que">Why only this company?</li>
                    <li class="que">What if any other organization offers you a better package?</li>
                    <li class="que">Explain the XYZ company service agreement.</li>
                    <li class="que">Give us some feedback about XYZ company.</li>
            </ul>
    </div>

    <div class="sec">
            <h1 class="title">Technical Questions</h1>
            <ul>
                            <li class="que">Difference between Bit and Byte.</li>
                            <li class="que">Explain OOPs concept.</li>
                            <li class="que">What is Polymorphism?</li>
                            <li class="que">Explain Margin and Padding in CSS.</li>
                            <li class="que">About NLP in Machine Learning.</li>
                            <li class="que">Explain in brief about Unit, Integration and Performance Testing.</li>
                            <li class="que">In which and what level of command do you have in languages?</li>
                            <li class="que">Explain DDL and DML in DBMS with examples.</li>
                            <li class="que">Tell me the difference between Object Oriented and Procedural Language.</li>
                            <li class="que">What was your Summer Project? Explain the functionalities.</li>
                            <li class="que">What is Multiple Inheritance?</li>
                            <li class="que">Have you heard about Cloud Computing? Explain it.</li>
            </ul>
    </div>
</body>
</html>