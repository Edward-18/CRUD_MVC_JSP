<%-- 
    Document   : editar
    Created on : 01/07/2020, 12:15:25 PM
    Author     : Edward
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                PersonaDAO dao = new PersonaDAO();
                int id = Integer.parseInt((String)request.getAttribute("idper"));
                Persona p = (Persona)dao.list(id);
            %>
            <h1>Modificar Persona</h1>
            <form action="Controlador">
                Nombre:<br>
                <input type="text" name="txtnombre" value="<%=p.getNom()%>"><br>
                Apellido:<br>
                <input type="text" name="txtapellido" value="<%=p.getApe()%>"><br><br>
                <input type="hidden" name="txtid" value="<%=p.getId()%>">
                <input type="submit" name="accion" value="Actualizar"><br>
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
        </div>
    </body>
</html>
