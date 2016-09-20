package com.dyy.njupt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class loginCotroller {

    @RequestMapping("/login")
    public ModelAndView check(HttpServletRequest request)
    {
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        //调用业务处理LoginCheck
        if(loginCheck.check(name, password).equals("项目经理"))
        {
            return new ModelAndView("major_output_distribution/R","username",name);
        }else if(loginCheck.check(name, password).equals("专业负责人")){
        	return new ModelAndView("person_output_distribution/R","username",name);
        }else if(loginCheck.check(name, password).equals("所长")){
        	return new ModelAndView("monitor_output_distribution/R","username",name);
        }else if(loginCheck.check(name, password).equals("经营部")){
        	return new ModelAndView("business_department_confirm/R","username",name);
        }
        else{
        	
        return new ModelAndView("error","username",name);
        
        }
    }

}