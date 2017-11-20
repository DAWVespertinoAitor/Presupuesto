/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controls;

import es.albarregas.beans.Contenidos;
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
@WebServlet(name = "contenido", urlPatterns = {"/contenido"})
public class contenido extends HttpServlet {

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
        
        Contenidos contenido=new Contenidos();
        Enumeration<String> enumeration=request.getParameterNames();
        String txt;
        
        while(enumeration.hasMoreElements()){
            txt=enumeration.nextElement();
            switch(txt){
                case "danios":contenido.setDaños(true);
                    break;
                case "cantidad":contenido.setCantidad(Integer.parseInt(request.getParameter(txt)));
                    break;
                case "franquicia":contenido.setFranquicia(Integer.parseInt(request.getParameter(txt)));
                    break;
            }
        }
        
        contenido.setPrima(CalcularCuota.calcularContenido(contenido));
        
        HttpSession sesion=request.getSession();
        sesion.setAttribute("contenido", contenido);
        
        response.sendRedirect("jsp/jspEL/visualizar.jsp");
        
    }

}
