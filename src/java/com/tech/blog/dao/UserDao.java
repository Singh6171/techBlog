/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.dao;

import com.tech.blog.entities.User;
import java.sql.*;

/**
 *
 * @author gurdeepsingh
 */
public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean userAdded = false;
        try {

            String query = "insert into userData(name,email,password,gender) values(?,?,?,?)";
            PreparedStatement ps = this.con.prepareStatement(query);
            ps.setString(1, user.getName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            ps.setString(4, user.getGender());
            ps.executeUpdate();
            userAdded = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return userAdded;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;

        try {
            String query = "select * from userdata where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                String name = rs.getString("name");
                user.setName(name);

                user.setId(rs.getInt("id"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                user.setGender(rs.getString("gender"));
                user.setTimestamp(rs.getTimestamp("registerDate"));
                user.setProfile(rs.getString("profile"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }

}
