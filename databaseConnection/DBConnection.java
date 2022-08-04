/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.lab.databaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Sq1
 */
public class DBConnection {
       static Connection con;
            public static Connection getCon() throws Exception {
            String url = "jdbc:mysql://localhost:3306/";
            String dbName = "lab";
            String driver = "com.mysql.cj.jdbc.Driver";
            String userName = "root";
            String password = "password";
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url + dbName, userName, password);
            return con;
    }
            
    
}
