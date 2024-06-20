/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tech.blog.entities;
import java.sql.*;

/**
 *
 * @author gurdeepsingh
 */
public class User {

    private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private Timestamp timestamp;
    private String profile;

    public User(String name, String email, String password, String gender) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
    }

    public User(int id, String name, String email, String password, String gender, Timestamp timestamp) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.timestamp = timestamp;
    }

    public User() {
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public String getGender() {
        return gender;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    
    
}
