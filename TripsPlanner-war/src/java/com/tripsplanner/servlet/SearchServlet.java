/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tripsplanner.servlet;

import com.tripsplanner.model.bean.GoogleDirectionsBean;
import com.tripsplanner.model.bean.SearchBeanLocal;
import com.tripsplanner.model.entity.Place;
import com.tripsplanner.model.entity.Search;
import com.tripsplanner.model.bean.AmadeusAPIBean;
import com.tripsplanner.model.bean.GooglePlacesBean;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.json.JSONObject;

/**
 * Authors: Giovanni Bonetta, Riccardo Renzulli, Gabriele Sartor<br>
 * Università degli Studi di Torino<br>
 * Department of Computer Science<br>
 * Sviluppo Software per Componenti e Servizi Web<br>
 * Date: May 2018<br><br>
 * <p/>
 * giovanni.bonetta@edu.unito.it<br>
 * riccardo.renzulli@edu.unito.it<br>
 * gabriele.sartor@edu.unito.it<br><br>
 */

public class SearchServlet extends HttpServlet {

    @EJB
    private AmadeusAPIBean amadeusAPIBean;
    @EJB
    private GooglePlacesBean googlePlacesBean;
    @EJB
    private SearchBeanLocal searchBean;
    @EJB
    private GoogleDirectionsBean dirBean;
    
    
    
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
        response.setContentType("text/html;charset=UTF-8");
        String action = request.getParameter("action");
        switch(action == null ? "" : action) {
            case "search":
                goSearch(request, response);
                break;
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

    private void goSearch(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        
        HashMap<String, String> mapSearch = new HashMap<String, String>();
        
        String departureCity = request.getParameter("departure_city");
        String destinationCity = request.getParameter("destination_city");
        String departureDate = request.getParameter("departure_date");
        String returnDate = request.getParameter("return_date");
        String numAdult = request.getParameter("adult_count");
        String numChildren = request.getParameter("child_count");
        String museums = request.getParameter("museums") == null ? "NO" : "YES";
        String art = request.getParameter("art") == null ? "NO" : "YES";
        String nature = request.getParameter("nature") == null ? "NO" : "YES";
        String shopping = request.getParameter("shopping") == null ? "NO" : "YES";
        String nightLife = request.getParameter("night_life") == null ? "NO" : "YES";
        
        System.out.print("Hello by SearchServlet!\n");
        System.out.print("Departure: " + departureCity + "\nDestination: " + destinationCity);
        System.out.print("Departure date: " + departureDate + "\nDestination date: " + returnDate);
        System.out.print("Adult: " + numAdult + "\nChildren: " + numChildren);
        System.out.print("Checkbox: \n" + "Museums: " + museums + 
                "\nArt: " + art +
                "\nNature: " + nature +
                "\nShopping: " + shopping + 
                "\nNight life: " + nightLife);
        
        mapSearch.put("departure_city", departureCity);
        mapSearch.put("destination_city", destinationCity);
        mapSearch.put("departure_date", departureDate);
        mapSearch.put("return_date", returnDate);
        mapSearch.put("adult_count", numAdult);
        mapSearch.put("child_count", numChildren);
        mapSearch.put("museums", museums);
        mapSearch.put("art", art);
        mapSearch.put("nature", nature);
        mapSearch.put("shopping", shopping);
        mapSearch.put("night_life", nightLife);
        
        Search search = searchBean.createSearch(mapSearch);
        
        try{
        JSONObject jsonFlight = amadeusAPIBean.getInspirationFlight(search.getDepartureCity(), "2018-07-01");
        System.out.print(jsonFlight);
        } catch (Exception ex) {
            Logger.getLogger(SearchServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        ArrayList<Place> bestPlaces = googlePlacesBean.getInterestingPlaces(search);

        dirBean.getRoute(bestPlaces.get(0), bestPlaces.get(1), "driving", "now");

        request.setAttribute("places", bestPlaces);
        
        request.getRequestDispatcher("trips.jsp").forward(request, response);
    }

}
