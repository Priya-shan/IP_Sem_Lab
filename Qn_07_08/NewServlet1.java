/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author welcom
 */
@WebServlet(name = "NewServlet1", urlPatterns = {"/NewServlet1"})
public class NewServlet1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Weather[] obj=new Weather[5];
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HashMap<String,Weather> map=new HashMap<>();
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String city=request.getParameter("city");
        obj[0]=new Weather("Madurai","38","34","Sunny");
        obj[1]=new Weather("Chennai","42","40","Hot");
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1></h1>");
            for(int i=0;i<2;i++){
                if(obj[i].city.equalsIgnoreCase(city)){
                    out.println("<h3>MaxTemp : "+obj[i].maxtemp+"</h3>");
                    out.println("<h3>MinTemp : "+obj[i].mintemp+"</h3>");
                    out.println("<h3>Climate : "+obj[i].mood+"</h3>");
                    
                }
            }
            out.println("</body>");
            out.println("</html>");
        }
        finally{
            
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
    public class Weather{
        String city;
        String maxtemp;
        String mintemp;
        String mood;
        Weather(String city,String maxtemp,String mintemp,String mood){
            this.city=city;
            this.maxtemp=maxtemp;
            this.mintemp=mintemp;
            this.mood=mood;
        }
    }
}

