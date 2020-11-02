<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        String id = (String)request.getParameter("val");
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/webtech", "root","");
                PreparedStatement pst = con.prepareStatement("select * from register where name=?");
                pst.setString(1,id);
                ResultSet rs = pst.executeQuery();
                 
                if(rs.first()){
                    out.println("<h1>Email already taken</h1>");
                }
                con.close();
            }
            catch(Exception ex){
                out.print(ex.getMessage());
            }
        %>
    </body>
</html>
