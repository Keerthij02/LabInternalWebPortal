/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab.classes;

import com.lab.databaseConnection.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Purushothaman J
 */
public class SaveMarks extends HttpServlet {

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
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            Enumeration<String> params = request.getParameterNames();
            Connection con = DBConnection.getCon();
            Statement st = con.createStatement();
            while (params.hasMoreElements()) {
                String paramName = params.nextElement();
                System.out.println("Parameter Name - " + paramName + ", Value - " + request.getParameter(paramName));
                String column = null;
                if (paramName.contains("ex")) {
                    String col = paramName.split("ex")[1];
                    if (col.equals("4")) {
                        column = "lab1";
                    } else if (col.equals("5")) {
                        column = "lab2";
                    } else if (col.equals("6")) {
                        column = "lab3";
                    } else if (col.equals("7")) {
                        column = "lab4";
                    } else if (col.equals("8")) {
                        column = "lab5";
                    } else if (col.equals("9")) {
                        column = "lab6";
                    } else if (col.equals("10")) {
                        column = "lab7";
                    } else if (col.equals("11")) {
                        column = "lab8";
                    } else if (col.equals("12")) {
                        column = "lab9";
                    } else if (col.equals("13")) {
                        column = "lab10";
                    }else if (col.equals("14")) {
                        column = "internal";
                    }
                    int add = st.executeUpdate("update students set " + column + " = '" + request.getParameter(paramName) + "' where id=" + paramName.split("ex")[0]);
                }        
            }
            request.setAttribute("msg", "Successfully Saved!!!");
            
            RequestDispatcher rd = request.getRequestDispatcher("myclasses.jsp");
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SaveMarks.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(SaveMarks.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold

}
