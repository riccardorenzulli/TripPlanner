/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tripsplanner.servlet;

import com.tripsplanner.model.bean.ApiKeysBean;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Authors: Giovanni Bonetta, Riccardo Renzulli, Gabriele Sartor<br>
 * Università degli Studi di Torino<br>
 * Department of Computer Science<br>
 * Sviluppo Software per Componenti e Servizi Web<br>
 * Date: May 2018<br><br>
 * giovanni.bonetta@edu.unito.it<br>
 * riccardo.renzulli@edu.unito.it<br>
 * gabriele.sartor@edu.unito.it<br><br>
 * 
 * the ControllerServlet acts as a controller to process calls from the views.
 * all the redirections are done using a parameter sent by the views
 */
public class ControllerServlet extends HttpServlet {

    @EJB
    private ApiKeysBean apiKeysBean;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ServletContext ctx = getServletContext();
        String action = request.getParameter("action");

        // control for api keys in session
        apiKeysBean.findKeysFromCSV(ctx);

        if (action == null) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/index.jsp");
            request.getSession().setAttribute("google_places_api", ApiKeysBean.keys.get("google_places_api"));
            rd.forward(request, response);
        }
        
        else if (action.equalsIgnoreCase("login") || action.equalsIgnoreCase("login-f") || action.equalsIgnoreCase("login-g") || action.equalsIgnoreCase("logout")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/LoginServlet");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("search")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/SearchServlet");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("tripView")) {
            System.out.println("IDTRIP: " + request.getParameter("trip_id"));
            RequestDispatcher rd = ctx.getRequestDispatcher("/TripServlet");
            rd.forward(request, response);
        } 
        
        else if(action.equalsIgnoreCase("tripHotel")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/SearchServlet");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("tripsPage")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/TripServlet");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("memoryUpload")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/MemoryServlet");
            rd.forward(request, response);
        }
        
        else if (action.equalsIgnoreCase("viewMemories")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/MemoryServlet");
            rd.forward(request, response);
        }
        
        else if (action.equalsIgnoreCase("deleteMemory")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/MemoryServlet");
            rd.forward(request, response);
        }
        
        else if (action.equalsIgnoreCase("user-info")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/user-profile.jsp");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("modify-user-info")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/UserServlet");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("contacts")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/contact-us.jsp");
            rd.forward(request, response);
        } 
        
        else if (action.equalsIgnoreCase("save-trip")) {
            request.getSession().setAttribute("go-save", false);
            RequestDispatcher rd = ctx.getRequestDispatcher("/TripServlet");
            rd.forward(request, response);
        } 
        
        else if(action.equalsIgnoreCase("delete-trip")) {
            RequestDispatcher rd = ctx.getRequestDispatcher("/TripServlet");
            rd.forward(request, response);
        }
        
        else if (action.equalsIgnoreCase("save-trip-login")) {
            request.getSession().setAttribute("go-save", true);
            RequestDispatcher rd = ctx.getRequestDispatcher("/LoginServlet");
            rd.forward(request, response);
        } 
        
        else {
            RequestDispatcher rd = ctx.getRequestDispatcher("/error.jsp");
            rd.forward(request, response);
        }

    }

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
        processRequest(request, response);
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
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
