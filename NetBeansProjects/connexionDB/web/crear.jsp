<%-- 
    Document   : crear
    Created on : 6/11/2020, 11:18:11 a. m.
    Author     : nian
--%>
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
        <h1>Agregar</h1>
        <div class="container mt5">
            <div class="row">
                <div class="col-sm">
                    <form action="crear.jsp" method="post">
                        <!--div class="form-group">
                            <label for="identificacion">Identificacion</label>
                            <input type="text" class="form-control" id="identificacion" name="identificacion" placeholder="Identificacion">
                        </div-->
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre">
                        </div>
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido">
                        </div>
                        <div class="form-group">
                            <label for="`edad">Edad</label>
                            <input type="text" class="form-control" id="`edad" name="edad" placeholder="Codigo">
                        </div>               


                        <button type="submit" name="enviar" class="btn btn-primary">Guardar<i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                    </form>


                </div>
            </div>
        </div>
        <%
            try {
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost/prueba", "root", "8203");
                PreparedStatement pst = cn.prepareStatement("insert into estudiantes values(?,?,?,?)");

                pst.setString(1, "0");
                pst.setString(2, request.getParameter("nombre").trim());
                pst.setString(3, request.getParameter("apellido").trim());
                pst.setString(4, request.getParameter("edad").trim());
                pst.executeUpdate();
                request.getRequestDispatcher("index.jsp").forward(request, response);

            } catch (Exception e) {
                System.out.println("Error en registro" + e);
            }
        %>
    </body>
</html>
