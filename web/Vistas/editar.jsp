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
        <title>Editar</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col">
            <%
                PersonaDAO dao = new PersonaDAO();
                int id = Integer.parseInt((String)request.getAttribute("idper"));
                Persona p = (Persona)dao.list(id);
            %>
                <h1 class="mt-4">Modificar Persona</h1>
                    <form action="Controlador">
                        <div class="form-group">
                            <label for="n">Nombre:</label>
                            <input type="text" class="form-control" name="txtnombre" id="n" value="<%=p.getNom()%>">
                        </div>

                        <div class="form-group">
                            <label for="a">Apellido:</label>
                            <input type="text" class="form-control" id="a" name="txtapellido" value="<%=p.getApe()%>">
                        </div>

                        <input type="hidden" name="txtid" value="<%=p.getId()%>">
                        
                        <div class="mr-2" style="float: left">
                        <input class="btn btn-success mb-3" type="submit" name="accion" value="Actualizar"><br>
                        </div>
                        <div class="ml-2" style="float: left">
                        <a href="Controlador?accion=listar" class="btn btn-primary">Regresar</a>
                        </div>
                    </form>
                </div>
                
                <div class="col"></div>
            </div>
        </div>
                
                
                
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
    </body>
</html>
