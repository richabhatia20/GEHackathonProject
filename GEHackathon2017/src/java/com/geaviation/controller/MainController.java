/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geaviation.controller;

import com.geaviation.bean.FormBean;
import com.geaviation.bean.PartLicenseBean;
import com.geaviation.dao.ReadExcelDao;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author richa
 */
public class MainController extends AbstractController {

    private ReadExcelDao readObj;
    public MainController() {
    }

    public MainController(ReadExcelDao readObj) {
        this.readObj = readObj;
    }

    
    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {

        ModelAndView mv = new ModelAndView();
        DataSource ds = (DataSource) this.getApplicationContext().getBean("myDataSource");

        try {

            String action = request.getParameter("action");

            String uri = request.getRequestURI();

            if (uri.endsWith("home.htm")) {
                mv.setViewName("home");
            }

            if ("request".equalsIgnoreCase(action)) {

                
            QueryRunner run = new QueryRunner(ds);
            
            
            ResultSetHandler<List<PartLicenseBean>> messages = new BeanListHandler<PartLicenseBean>(PartLicenseBean.class);
                    List<PartLicenseBean> msg = run.query("select * from part_license", messages);
            
            if (msg != null) {
                System.out.println("printing license no received from DB: "+ msg.get(0).getLicense_no());
                
                mv.addObject("licenselist", msg);
                
            }

                
                
                mv.setViewName("request");
            } else if ("validateinvoice".equalsIgnoreCase(action)) {
                mv.setViewName("validateinvoice");
            } else if ("updatestatus".equalsIgnoreCase(action)) {
                mv.setViewName("updatestatus");
            } else if ("viewshipstatus".equalsIgnoreCase(action)) {
                mv.setViewName("viewshipstatus");

            }

           
            
           else if("createrequest".equalsIgnoreCase(action))
            {
                System.out.println("create request");
                
                //go to database and insert
                
            }
           else if("newfileSelect".equalsIgnoreCase(action))
            {
                System.out.println("new file select");
                
                String csvFile = request.getParameter("newfile");

            if (csvFile != null) {
                StringBuffer data = readObj.getData(csvFile);
                
                System.out.println("printing data:" + data); 
               
                mv.addObject("data", data);
                
                
            }
            mv.setViewName("validateinvoice");
            //request.setAttribute("selected", "filedata");

            }
            
        } catch (Exception e) {

            e.printStackTrace();
        }

        return mv;
    }

}
