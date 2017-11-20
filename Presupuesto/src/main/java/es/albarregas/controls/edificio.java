/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controls;

import es.albarregas.beans.Edificios;
import es.albarregas.beans.Elecciones;
import es.albarregas.models.CalcularCuota;
import java.io.IOException;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ivan
 */
@WebServlet(name = "edificio", urlPatterns = {"/edificio"})
public class edificio extends HttpServlet {

    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Edificios edificio=new Edificios();
        Enumeration<String> enumeration=request.getParameterNames();
        String txt,url;
        
        while(enumeration.hasMoreElements()){
            txt=enumeration.nextElement();
            switch(txt){
                case "tipo":edificio.setTipo(request.getParameter(txt));
                    break;
                case "habitaciones":edificio.setHabitaciones(Integer.parseInt(request.getParameter(txt)));
                    break;
                case "fecha":edificio.setFecha(request.getParameter(txt));
                    break;
                case "material":edificio.setMaterial(request.getParameter(txt));
                    break;
                case "valor":edificio.setValor(Integer.parseInt(request.getParameter(txt)));
                    break;
            }
        }
        
        edificio.setPrima(CalcularCuota.calcularCuota(edificio));
        
        HttpSession sesion=request.getSession();
        sesion.setAttribute("edificio", edificio);
        
        Elecciones ele=(Elecciones)sesion.getAttribute("eleccion");
        if(ele.getContenido()){
            url="jsp/jspEL/contenido.jsp";
        }else{
            url="jsp/jspEL/visualizar.jsp";
        }
        
        response.sendRedirect(url);
        
    }


}
