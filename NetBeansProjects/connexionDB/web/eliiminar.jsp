<%-- 
    Document   : eliiminar
    Created on : 6/11/2020, 10:07:11 p. m.
    Author     : nian
--%>

<%@page import="java.sql.*"%>
<!--%@page import="com.mysql.jdbc.Driver"%-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            try {
                //Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost/prueba?user=root&password=8203");
                st = con.createStatement();
                st.executeUpdate("delete FROM estudiantes where identificacion='"+request.getParameter("id") +"';");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e);
            }
        %>

    </body>
</html>
