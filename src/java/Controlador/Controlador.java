package Controlador;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Controlador extends HttpServlet {
    
    String listar = "Vistas/listar.jsp";
    String agregar = "Vistas/agregar.jsp";
    String editar = "Vistas/editar.jsp";
    Persona p = new Persona();
    PersonaDAO dao = new PersonaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String accion = request.getParameter("accion");
        if(accion.equals("listar")){
            acceso=listar;
        }else if(accion.equals("agregar")){
            acceso=agregar;
        }else if(accion.equals("Ingresar")){
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtapellido");
            p.setNom(nombre);
            p.setApe(apellido);
            dao.agregar(p);
            acceso=listar;
        }else if(accion.equals("editar")){
            request.setAttribute("idper",request.getParameter("id"));
            acceso=editar;
        }else if(accion.equals("Actualizar")){
            int id=Integer.parseInt(request.getParameter("txtid"));
            String nombre = request.getParameter("txtnombre");
            String apellido = request.getParameter("txtapellido");
            p.setId(id);
            p.setNom(nombre);
            p.setApe(apellido);
            dao.editar(p);
            acceso=listar;
        }else if(accion.equals("eliminar")){
            int id=Integer.parseInt(request.getParameter("id"));
            p.setId(id);
            dao.eliminar(id);
            acceso=listar;
        }
        request.getRequestDispatcher(acceso).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
