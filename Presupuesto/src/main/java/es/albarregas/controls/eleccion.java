/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package es.albarregas.controls;

import es.albarregas.beans.Elecciones;
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
@WebServlet(name = "eleccion", urlPatterns = {"/eleccion"})
public class eleccion extends HttpServlet {


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
        
        Elecciones eleccion=new Elecciones();
        
        Enumeration<String> enumeration=request.getParameterNames();
        String txt,url=null;
        while(enumeration.hasMoreElements()){
            txt=enumeration.nextElement();
            if(txt.equals("edificio")){
                eleccion.setEdificio(true);   
            }else if(txt.equals("contenido")){
                eleccion.setContenido(true);                
            }
        }
        
        if(eleccion.getEdificio()==true){
            url="jsp/jspEL/edificio.jsp";
        }else{
            url="jsp/jspEL/contenido.jsp";
        }
        
        HttpSession sesion=request.getSession();
        sesion.setAttribute("eleccion", eleccion);
        
        response.sendRedirect(url);
        
    }


}
