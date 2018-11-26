package com.store.spring.candystore;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	@Autowired CustomerDao dao;
	
	private static final String[ ] countries = { "Canada", "Mexico", "United States"};
	
	@RequestMapping(value = "/form")
	public ModelAndView customer( ){
		ModelAndView modelAndView = new ModelAndView( );
		modelAndView.setViewName("customerForm");
		modelAndView.addObject("customer", new Customer( ));
		modelAndView.addObject("countries", countries);
		
		return modelAndView;
	}

	@RequestMapping(value = "/result")
	public ModelAndView processCustomer(Customer customer){
		ModelAndView modelAndView = new ModelAndView();
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

	@RequestMapping(value = "/viewItem")
	public ModelAndView viewItem( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Item> allItems = dao.getAllItems();
		modelAndView.setViewName("viewAllItems");
		modelAndView.addObject("all", allItems);
		return modelAndView;
	}


}
