package com.xst.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Created by sl on 16-4-5.
 */
//@Controller
public class BaseController implements HandlerExceptionResolver {

//    @RequestMapping(value = "*")
//    public String notfound(){
//
//        return "error";
//    }

    @Override
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        return new ModelAndView("404");
      //  return null;
    }
}
