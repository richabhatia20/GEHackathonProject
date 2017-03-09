/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geaviation.dao;

import com.geaviation.bean.FormBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author richa
 */
public class ReadExcelDao {
        private MainDAO dao;
    private Connection con;
    private ResultSet rs;

    public ReadExcelDao(MainDAO dao) {
        this.dao = dao;
    }

    public StringBuffer getData(String fileName) {

        ArrayList<FormBean> dataRows = new ArrayList();

        try {
            con = dao.getConnectionJDBC();
            Statement statement = con.createStatement();
            String fName = fileName.replace(".csv", "");
            rs = statement.executeQuery("SELECT * FROM " + fName);
            int i = 0;
            while (rs.next()) {
                FormBean data = new FormBean();
                data.setRequest_no(rs.getString("RequestNo"));
                data.setPart_id(rs.getString("PartId"));
                data.setCountry(rs.getString("Country"));
                data.setLicense_no(rs.getString("LicenseNo"));
                data.setLicense_category(rs.getString("LicenseCategory"));
                data.setPart_name(rs.getString("PartName"));
                data.setExport_tag(rs.getString("ExportTag"));
                data.setPart_owner(rs.getString("PartOwner"));
                data.setReciepient_name(rs.getString("ReciepientName"));
                data.setReciepient_address(rs.getString("ReceipientAddress"));
                data.setPart_quantity(rs.getString("PartQuantity"));
                data.setCost_per_qty(rs.getString("Costperquantity"));
                data.setTotal_cost(rs.getString("Totalcost"));
                data.setExpiration_date(rs.getString("ExpirationDate"));
                
                dataRows.add(data);

                i++;
//
//                if (i > 100) {
//                    break;
//                }
            }
        } catch (Exception e) {
            System.out.println("Exception occurred: " + e.getMessage());
            e.printStackTrace();
        }

        StringBuffer o = getResult(dataRows);
        return o;
    }

    private StringBuffer getResult(ArrayList<FormBean> list) {
        StringBuffer result = new StringBuffer();
        int i = 0;
        for (FormBean data : list) {
            result.append("<tr><td><input type = 'text' name='requestno" + i + "' value='" + data.getRequest_no()+ "'/></td>");
            result.append("<td><input type = 'text' name='partid" + i + "' value='" + data.getPart_id()+ "'/></td>");
            result.append("<td><input type = 'text' name='country" + i + "' value='" + data.getCountry()+ "'/></td>");
            result.append("<td><input type = 'text' name='licenseNo" + i + "' value='" + data.getLicense_no()+ "'/></td>");
            result.append("<td><input type = 'text' name='licenseCategory" + i + "' value='" + data.getLicense_category()+ "'/></td>");
            result.append("<td><input type = 'text' name='partName" + i + "' value='" + data.getPart_name()+ "'/></td>");
            result.append("<td><input type = 'text' name='exportTag" + i + "' value='" + data.getExport_tag()+ "'/></td>");
            result.append("<td><input type = 'text' name='partOwner" + i + "' value='" + data.getPart_owner()+ "'/></td>");
            result.append("<td><input type = 'text' name='reciepientName" + i + "' value='" + data.getReciepient_name()+ "'/></td>");
            result.append("<td><input type = 'text' name='reciepientAddress" + i + "' value='" + data.getReciepient_address()+ "'/></td>");
            result.append("<td><input type = 'text' name='partQuantity" + i + "' value='" + data.getPart_quantity()+ "'/></td>");
            result.append("<td><input type = 'text' name='costPerQuantity" + i + "' value='" + data.getCost_per_qty()+ "'/></td>");
            result.append("<td><input type = 'text' name='totalCost" + i + "' value='" + data.getTotal_cost()+ "'/></td>");
            result.append("<td><input type = 'text' name='expirationDate" + i + "' value='" + data.getExpiration_date()+ "'/></td>");
            
            i++;
        }
        result.append("<tr><td><input type = 'hidden' name='rows' value='" + list.size() + "'/></td></tr>");
        return result;
    }

}
