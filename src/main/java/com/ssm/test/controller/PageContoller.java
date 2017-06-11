package com.ssm.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by King on 2017/6/3.
 */
@Controller
public class PageContoller {
    @RequestMapping(value = "/")
    public String home() {

        return "home";
    }
}
