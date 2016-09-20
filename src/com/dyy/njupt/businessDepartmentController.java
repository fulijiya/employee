package com.dyy.njupt;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/business_department_confirm")
public class businessDepartmentController {

	@RequestMapping("/cost")
    public String cost(HttpServletRequest request)
    {
       
            return "business_department_confirm/cost";
    }
	@RequestMapping("/output_distribution_confirm")
    public String output_distribution_confirm(HttpServletRequest request)
    {
       
            return "business_department_confirm/output_distribution_confirm";
    }
	@RequestMapping("/reback")
    public String reback(HttpServletRequest request)
    {
       
            return "business_department_confirm/reback";
    }
	@RequestMapping("/search")
    public String search(HttpServletRequest request)
    {
       
            return "business_department_confirm/search";
    }
	@RequestMapping("/expense_cost")
    public String expense_cost(HttpServletRequest request)
    {
       
            return "business_department_confirm/expense_cost";
    }
	@RequestMapping("/vehicle_cost")
    public String vehicle_cost(HttpServletRequest request)
    {
       
            return "business_department_confirm/vehicle_cost";
    }
	@RequestMapping("/print_cost")
	public String print_cost(HttpServletRequest request)
    {
       
            return "business_department_confirm/print_cost";
    }
	@RequestMapping("/hall_cost")
	public String hall_cost(HttpServletRequest request)
    {
       
            return "business_department_confirm/hall_cost";
    }
	
}