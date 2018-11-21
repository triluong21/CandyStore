package com.store.spring.candystore;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	@Autowired CustomerDao dao;
	
	private static final String[ ] countries = { "United States", "Canada", "Mexico"};
	
	@RequestMapping(value = "/form")
	public ModelAndView customer( ){
		ModelAndView modelAndView = new ModelAndView( );
		modelAndView.setViewName("customerForm");
		modelAndView.addObject("customer", new Customer( ));
		modelAndView.addObject("countries", countries);
		
		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processCustomer(@ModelAttribute("customer") Customer customer, BindingResult result){
		ModelAndView modelAndView = new ModelAndView();
		
		//validation of inputs
		boolean error = false;
				
		if(customer.getFirstname().isEmpty()){
			result.rejectValue("firstname", "error.firstname");
			error = true;
	    }
			     
		if(customer.getLastname().isEmpty()){
			result.rejectValue("lastname", "error.lastname");
			error = true;
		}
			     
		if(customer.getAddress().isEmpty()){
			result.rejectValue("address", "error.address");
			error = true;
		}
			    
		if(customer.getCity().isEmpty()){
			        result.rejectValue("city", "error.city");
			        error = true;
		}
		
		if(customer.getState().isEmpty()){
	        result.rejectValue("state", "error.state");
	        error = true;
	    }
		
		if(customer.getZip().isEmpty()){
	        result.rejectValue("zip", "error.zip");
	        error = true;
	    }
		
		if(customer.getEmail().isEmpty()){
	        result.rejectValue("email", "error.email");
	        error = true;
	    }
			     
		if(error) {
			modelAndView.setViewName("customerForm");
			modelAndView.addObject("countries", countries);
			return modelAndView;
		}
		
		
		dao.insertCustomer(customer);
		modelAndView.setViewName("customerResult");
		modelAndView.addObject("c", customer);
		return modelAndView;
	}
	
	@Bean
	public CustomerDao dao(){
		CustomerDao bean = new CustomerDao();
		return bean;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Customer> allCustomers = dao.getAllCustomers();
		modelAndView.setViewName("viewAllCustomers");
		modelAndView.addObject("all", allCustomers);
		return modelAndView;
	}




}
