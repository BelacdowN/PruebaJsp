
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Persona;


@WebServlet(name = "SvModificar", urlPatterns = {"/SvModificar"})
public class SvModificar extends HttpServlet {

    Controladora control = new Controladora();
   
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {      
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
       int id = Integer.parseInt(request.getParameter("id_buscar"));               
        Persona perso = control.traerPersona(id);        
        HttpSession miSession = request.getSession();
        miSession.setAttribute("perso", perso);    
        if (perso!=null) {
            response.sendRedirect("modPersonas.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        Persona pers = new Persona();
        int id = Integer.parseInt(request.getParameter("id"));   
        pers = control.traerPersona(id);
        String dni = request.getParameter("dni");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        if (!pers.getDni().equalsIgnoreCase(dni)){
            pers.setDni(dni);
        }
        if (!pers.getNombre().equalsIgnoreCase(nombre)){
             pers.setNombre(nombre);
        }
        if (!pers.getApellido().equalsIgnoreCase(apellido)){
             pers.setApellido(apellido);
        }
        if (!pers.getTelefono().equalsIgnoreCase(telefono)){
            pers.setTelefono(telefono);
        }   
        control.editPersona(pers);
        response.sendRedirect("index.jsp"); 
        
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
