<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
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
            <h1>Personas</h1>
            <a href="Controlador?accion=agregar">Agregar Nuevo</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona>list = dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per = null;
                    while(iter.hasNext()){
                        per = iter.next();
                %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%= per.getNom()%></td>
                        <td><%= per.getApe()%></td>
                        <td>
                            <a href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%= per.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
        
    </body>
</html>
