<%-- 
    Document   : index
    Created on : 01/07/2020, 12:13:45 PM
    Author     : Edward
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head
    
    <!-- 
        create database registrados;
    
        create table persona(
        id_persona int not null auto_increment,
        nombre varchar(50) not null,
        apellido varchar(50) not null,
        primary key (id_persona)
        );
    
        insert into persona values (1,"Edward","Alarco");
        insert into persona values (2,"Mario","Casas");
    -->
    
    
    
    <body>
        <div>
            <a href="Controlador?accion=listar">Listar Persona</a>
        </div>
    </body>
</html>
