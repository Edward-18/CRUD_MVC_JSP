<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container">
            <h1 class="mt-3"><u>Personas</u></h1>
            <a class="btn btn-success mt-3" href="Controlador?accion=agregar">Agregar Nuevo</a>
            <table class="table table-bordered mt-4" border="1">
                <thead class="thead-dark">
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Apellido</th>
                        <th class="text-center">Acciones</th>
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
                        <td class="text-center"><%= per.getId()%></td>
                        <td class="text-center"><%= per.getNom()%></td>
                        <td class="text-center"><%= per.getApe()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning mr-2" href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                            <a class="btn btn-danger ml-2" href="Controlador?accion=eliminar&id=<%= per.getId()%>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>

        </div>
        
                
                
                
                
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
