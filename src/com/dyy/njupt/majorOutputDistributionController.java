package com.dyy.njupt;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/major_output_distribution")
public class majorOutputDistributionController {
	HashMap<String, String> map=new HashMap<>();
	@RequestMapping("/first")
    public String R(HttpServletRequest request)
    {
       
            return "major_output_distribution/first";
    }
	@RequestMapping("/confirm")
    public ModelAndView confirm(HttpServletRequest request) {
		String project_name = request.getParameter("project_name");
		   System.out.println(project_name);
		   map=majorOutputDistribution.confirm(project_name);
		   ModelAndView modelAndView = new ModelAndView();  
	       modelAndView.setViewName( "major_output_distribution/confirm" );  
	       modelAndView.addObject( "project_name" , map.get("project_name") );
	       modelAndView.addObject( "project_type" , map.get("project_type") ); 
	       modelAndView.addObject( "project_manager" , map.get("project_manager") ); 
	       return modelAndView;
    }
	@RequestMapping("/reback")
    public ModelAndView reback(HttpServletRequest request)
    {
		 String project_name = request.getParameter("project_name");
		 map=majorOutputDistribution.confirm(project_name);
		   ModelAndView modelAndView = new ModelAndView();  
	       modelAndView.setViewName( "major_output_distribution/reback" );  
	       modelAndView.addObject( "project_name" , map.get("project_name") );
	       modelAndView.addObject( "project_type" , map.get("project_type") ); 
	       modelAndView.addObject( "project_manager" , map.get("project_manager") ); 
	       modelAndView.addObject( "irrigation_scale" , map.get("irrigation_scale") );
	       modelAndView.addObject( "plan_scale" , map.get("plan_scale") );
	       modelAndView.addObject( "rock_scale" , map.get("rock_scale") );
	       modelAndView.addObject( "municipal_scale" , map.get("municipal_scale") );
	       modelAndView.addObject( "budget_scale" , map.get("budget_scale") );
	       modelAndView.addObject( "auto_scale" , map.get("auto_scale") );
	       modelAndView.addObject( "golden_scale" , map.get("golden_scale") );
	       modelAndView.addObject( "arch_scale" , map.get("arch_scale") );	     
	       return modelAndView;
    }
	
}