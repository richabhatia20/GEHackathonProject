/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.geaviation.controller;

import com.geaviation.bean.UsersBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;

/**
 *
 * @author richa
 */
public class LoginController extends AbstractController {

    public LoginController() {
    }

    protected ModelAndView handleRequestInternal(
            HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        ModelAndView mv = new ModelAndView();

        DataSource ds = (DataSource) this.getApplicationContext().getBean("myDataSource");

        try {

            String username = request.getParameter("username");
            String password = request.getParameter("password");
            //String status = "FAILURE";

            QueryRunner run = new QueryRunner(ds);
            ResultSetHandler<UsersBean> user = new BeanHandler<UsersBean>(UsersBean.class);
            Object[] params = new Object[2];
            params[0] = username;
            params[1] = password;
            UsersBean ub = run.query("select * from user_account where UNAME =? and UPASSWORD =?", user, params);
            if (ub != null) {

                mv.addObject("username", username);
                mv.setViewName("home");
            } else {
                mv.addObject("error", "true");
                mv.setViewName("index");

            }

        } catch (Exception e) {

            e.printStackTrace();
        }

        return mv;
    }

}
