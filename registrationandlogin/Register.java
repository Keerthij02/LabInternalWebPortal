/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab.registrationandlogin;

import com.lab.databaseConnection.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author admin
 */
public class Register extends HttpServlet {

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
        try {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String confpassword = request.getParameter("confpassword");
            String email = request.getParameter("email");
            if(email.contains("@auttvl.ac.in")){
                
             if (password.equals(confpassword)) {
                Connection con = DBConnection.getCon();
                Statement st = con.createStatement();
                int add = st.executeUpdate("insert into users (name, email, password)  values('" + name + "','" + email + "','" + password + "')");
                if (add > 0) {
                    request.setAttribute("msg", "Successfully Registered!!!");                    
                }
             }  else{
                request.setAttribute("msg", "Password and Conf. Password not match");                  
            }
            }
            else{
                request.setAttribute("msg","Enter valid Mail ID");
            }
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e);
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
