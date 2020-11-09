<%-- 
    Document   : index
    Created on : 6/11/2020, 8:11:26 a. m.
    Author     : nian
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> <!--bootstarp-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th scope="col" colspan="4" class="text-center"><h3>Empleados</h3></th>
                    <th scope="col">
                        <a href="crear.jsp"><i class="fa fa-user-plus" aria-hidden="true"></i></a> 
                    </th>                    
                </tr>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Nombres</th>
                    <th scope="col">Apellidos</th>
                    <th scope="col">Edad</th>                    
                    <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "8203");
                        st = con.createStatement();
                        rs = st.executeQuery("select *from estudiantes");
                        while (rs.next()) {
                %>
                <tr>
                    <th scope="row"><%= rs.getString(1)%></th>
                    <td><%= rs.getString(2)%></td>
                    <td><%= rs.getString(3)%></td>
                    <td><%= rs.getString(4)%></td>  
                    <td>
                        <a href="editar.jsp?id=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&apellido=<%= rs.getString(3)%>&edad=<%= rs.getString(4)%>"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                        <a href="eliiminar.jsp?id=<%= rs.getString(1)%>" class="ml-1"><i class="fa fa-trash" aria-hidden="true"></i></a>                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        out.print("error: " + e);
                    }
                %>

            </tbody>
        </table>

    </table>
</body>
</html>
