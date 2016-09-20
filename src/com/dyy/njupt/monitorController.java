package com.dyy.njupt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/monitor_output_distribution")
public class monitorController {

	@RequestMapping("/reback")
    public String confirm(HttpServletRequest request)
    {
       
            return "monitor_output_distribution/reback";
    }
	
}