/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.helper;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author gurdeepsingh
 */
public class ConnectionProvider {

    private static Connection con;

    public static Connection getCon() {
        try {
            if (con == null) {
                Class.forName("com.mysql.cj.jdbc.Driver"); //  driver class name
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/techBlog?useSSL=false&serverTimezone=UTC", "root", "Tiwana@6171");
                return con;
            }

        } catch (Exception e) {
            System.out.println("Error establishing database connection: " + e.getMessage());
            e.printStackTrace(); // Log the full stack trace for debugging
            return null;
        }
        return con;
    } 
    

}
