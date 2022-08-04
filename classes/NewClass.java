/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lab.classes;

import au.com.bytecode.opencsv.CSVReader;
import com.lab.databaseConnection.DBConnection;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Purushothaman J
 */
@MultipartConfig
public class NewClass extends HttpServlet {

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
        try {
            String subject = request.getParameter("subject");
            String department = request.getParameter("department");
            String semester = request.getParameter("semester");
            String userId = request.getParameter("userid");
            String scode=request.getParameter("scode");
           if(scode.length()>7){
               RequestDispatcher rd = request.getRequestDispatcher("newclass.jsp");
               request.setAttribute("msg","Enter valid SubjectCode");
               rd.forward(request, response);
           }
           else{
               scode=scode.toUpperCase();
           }
            Part filePart = request.getPart("file");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            InputStream fileContent = filePart.getInputStream();
            Connection con;
            Statement st;
            int key = 0;

            con = DBConnection.getCon();
            st = con.createStatement();
            String sql = "insert into classes (subject, department, semester,subcode, fk_userid)  "
                    + "values('" + subject + "','" + department + "','" + Integer.parseInt(semester) + "','" + scode + "','" + Integer.parseInt(userId) + "')";
            PreparedStatement ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ps.executeUpdate();
            
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                key = rs.getInt(1);
            }
            System.out.println("Id " + key);
            ps.close();
          
            
            CSVReader reader = new CSVReader(new InputStreamReader(fileContent, "UTF-8"));
            String[] nextRecord;
            while ((nextRecord = reader.readNext()) != null) {
                sql = "insert into students (name, regno, fk_classid, fk_userid)  "
                        + "values('" + nextRecord[0] + "','" + nextRecord[1] + "','" + key + "','" + Integer.parseInt(userId) + "')";
                con = DBConnection.getCon();
                ps = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                ps.executeUpdate();
                ps.close();
                
            }
            
            con.close();
             RequestDispatcher rd = request.getRequestDispatcher("userhome.jsp");
                request.setAttribute("msg", "Data has been Imported");
                rd.forward(request, response);
        } catch (Exception ex) {
            Logger.getLogger(NewClass.class.getName()).log(Level.SEVERE, null, ex);
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
