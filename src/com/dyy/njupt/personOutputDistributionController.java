package com.dyy.njupt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/person_output_distribution")
public class personOutputDistributionController {
	@RequestMapping("/first")
    public String R(HttpServletRequest request)
    {
       
            return "person_output_distribution/first";
    }
	@RequestMapping("/output_distribution")
    public String confirm(HttpServletRequest request)
    {
       
            return "person_output_distribution/output_distribution";
    }
	
}