<%@page import="javax.websocket.Session"%>
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Placement-Cell Login</title>
    </head>
    <body>
        <%
            try{
                String email = request.getParameter("e1");
                String pass = request.getParameter("p1");
                int c = 0;
                Class.forName("com.mysql.jdbc.Driver");

                Connection con = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/webtech", "root","");
                Statement stmt = con.createStatement();
                ResultSet rs = stmt.executeQuery("select email, password from register");
                while(rs.next()){
                    if(email.equals(rs.getString(1)) && (pass.equals(rs.getString(2)))){
                    c++;                  
                    }
                }
                if (c == 1){
                    out.println("Valid user");
                    session.setAttribute("mail", email);
                    session.setAttribute("password", pass);
                    response.sendRedirect("after_login.jsp");
                }
                else{
                    out.println("Invalid user");
                }
            }
            catch(Exception ex){
                out.println(ex.getMessage());
            }
        %>
    </body>
</html>
