/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geaviation.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author richa
 */
public class MainDAO {
    
    private String dbdriver;
    private String url;
    private Connection dbconnection;

    public void setDbdriver(String dbdriver) {
        this.dbdriver = dbdriver;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Connection getConnectionJDBC()
            throws IOException {
        dbconnection = null;
        try {
            Class.forName(dbdriver);
        } catch (ClassNotFoundException e) {
            System.out.println("driver not found");
        }
        try {
            dbconnection = DriverManager.getConnection(url);
        } catch (Exception e) {
            System.out.println("connection failure");
        }

        if (dbconnection != null) {
            System.out.println("connection done");
        }
        return dbconnection;
    }

    public void close() {
        if (dbconnection != null) {
            try {
                dbconnection.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }
}
