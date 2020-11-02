<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Placement Cell- Registration</title>
        <meta http-equiv="refresh" content="4; URL=login.html">
    </head>
    <body>
        <%
                String n, e, p, c, m, id;
                n = request.getParameter("n1");
                e = request.getParameter("e1");
                p = request.getParameter("p1");
                c = request.getParameter("c1");
                m = request.getParameter("m1");
                id = request.getParameter("id1");
        try{
               int x;
               PreparedStatement pst;
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webtech", "root","");
               pst = con.prepareStatement("insert into register(name, email, mobile, password, college, college_id) values(?, ?, ?, ?, ?, ?)");
               pst.setString(1,n);
               pst.setString(2,e);
               pst.setString(3,m);
               pst.setString(4,p);
               pst.setString(5,c);
               pst.setString(6,id);
               x = pst.executeUpdate();
               if (x==1){
                   out.println("<h1>Record has been stored</h1><br> <h2>You will be redirected soon...</h2>");
               }
         }
               catch(Exception ex){
                    out.print("Error -> "+ex.getMessage());
                    
                    }
         %>
    </body>
</html>
