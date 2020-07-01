<%-- 
    Document   : agregar
    Created on : 01/07/2020, 12:15:19 PM
    Author     : Edward
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1>Agregar Personas</h1>
            <form action="Controlador">
                Nombre:<br>
                <input type="text" name="txtnombre"><br>
                Apellido:<br>
                <input type="text" name="txtapellido"><br><br>
                <input type="submit" name="accion" value="Ingresar"><br>
            </form>
        </div>
    </body>
</html>
