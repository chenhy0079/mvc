package com.lagou.demo.controller;

import com.lagou.demo.service.IDemoService;
import com.lagou.edu.mvcframework.annotations.LagouAutowired;
import com.lagou.edu.mvcframework.annotations.LagouController;
import com.lagou.edu.mvcframework.annotations.LagouRequestMapping;
import com.lagou.edu.mvcframework.annotations.LagouSecurity;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@LagouController
@LagouRequestMapping("/demo")
@LagouSecurity({"zhangsan"})
public class DemoController {


    @LagouAutowired
    private IDemoService demoService;


    /**
     * URL: /demo/query?name=lisi
     * @param request
     * @param response
     * @param username
     * @return
     */
    @LagouRequestMapping("/query")
    @LagouSecurity({"lisi"})
    public String query(HttpServletRequest request, HttpServletResponse response,String username) {
        return demoService.get(username);
    }

    @LagouRequestMapping("/get")
    @LagouSecurity({"wangwu"})
    public String get(HttpServletRequest request, HttpServletResponse response,String username) {
        return demoService.get(username);
    }
}
