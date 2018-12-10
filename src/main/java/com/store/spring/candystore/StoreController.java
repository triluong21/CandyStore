package com.store.spring.candystore;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StoreController {
	@Autowired CustomerDao dao;
	
	
	private Customer tempC = new Customer();
	private Order tempO = new Order();
	private double tempCost;
	private static final String[ ] countries = { "United States", "Canada", "Mexico"};

	//gathers customer information from the user
	@RequestMapping(value = "/form")
	public ModelAndView customer(@ModelAttribute("customer") Customer customer){
		ModelAndView modelAndView = new ModelAndView( );
		boolean error = false;
		
		
		
		modelAndView.setViewName("customerForm");
		modelAndView.addObject("customer", customer);
		modelAndView.addObject("countries", countries);

		return modelAndView;
	}

	//assigns user input to the customer and order to finalize
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
		
		if((customer.getState().length()) > 2) {
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

		if(customer.getUsername().isEmpty()){
			result.rejectValue("username", "error.username");
			error = true;
	    }

		if(customer.getPassword().isEmpty()){
			result.rejectValue("password", "error.password");
			error = true;
	    }

		if(error) {
			modelAndView.setViewName("customerForm");
			modelAndView.addObject("countries", countries);
			return modelAndView;
		}

		dao.insertCustomer(tempCost, tempO, tempC, customer);
		modelAndView.setViewName("customerResult");
		modelAndView.addObject("customer", customer);
		return modelAndView;
	}
	
	//final page of the order with full customer information
	@RequestMapping(value = "/final")
	public ModelAndView customerFinalPage(@ModelAttribute("customer") Customer customer, BindingResult result){
		ModelAndView modelAndView = new ModelAndView( );
		Customer custFinal = dao.findCustomer(tempC);
        Order temp = dao.getCustOrderNum(custFinal);
        List<OrderItem> allOrderItems = dao.getAllOrderItems(temp);
        
		modelAndView.setViewName("customerLogged");
		modelAndView.addObject("user", custFinal);
		modelAndView.addObject("all", allOrderItems);
		modelAndView.addObject("ordercost", temp);

		return modelAndView;
	}

	@Bean
	public CustomerDao dao(){
		CustomerDao bean = new CustomerDao();
		return bean;
	}

	//view all customers in the database
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Customer> allCustomers = dao.getAllCustomers();
		modelAndView.setViewName("viewAllCustomers");
		modelAndView.addObject("all", allCustomers);
		return modelAndView;
	}

	// first time viewing the catalog sending to viewAllItems.jsp
	@RequestMapping(value = "/viewItem")
	public ModelAndView viewItems( ){
		ModelAndView modelAndView = new ModelAndView();
		List<Item> allItems = dao.getAllItems();
		modelAndView.setViewName("viewAllItems");
		modelAndView.addObject("all", allItems);
		modelAndView.addObject("tempCustomer", new Customer());
		modelAndView.addObject("orderNumber", new Order());
		tempCost = 0.00;
		return modelAndView;
	}
	
	// continuing to view the catalog to add more items sending to contViewAllItems.jsp
		@RequestMapping(value = "/viewItemCont")
		public ModelAndView viewItem(@ModelAttribute("orderNumber")Order tempOrder, @ModelAttribute("tempCustomer") Customer tempCustomer, BindingResult result){
			ModelAndView modelAndView = new ModelAndView();
			System.out.println("this is assigned customer in first time in contViewItem" + tempCustomer.getCustomerid());
			List<Item> allItems = dao.getAllItems();
			modelAndView.setViewName("contViewAllItems");
			modelAndView.addObject("all", allItems);
			modelAndView.addObject("tempCustomer", tempCustomer);
			modelAndView.addObject("orderNumber", tempOrder);
			System.out.println(tempCustomer.getCustomerid());
			return modelAndView;
		}
	
	//view selected item FIRST TIME sending to orderitem.jsp
	@RequestMapping(value = "/viewSelectedItem")
	public ModelAndView viewSelectedItem(@ModelAttribute("orderNumber") Order tempOrder, @ModelAttribute("tempCustomer") Customer tempCustomer, @ModelAttribute("item") Item item, BindingResult result ){
		ModelAndView modelAndView = new ModelAndView();
		dao.assignCustomerNumber(tempCustomer);
		tempC.setCustomerid(tempCustomer.getCustomerid());
		System.out.println("this is assigned customer in first time orderitem" + tempCustomer.getCustomerid());
		tempOrder.setCustomerid(tempC.getCustomerid());
		dao.assignOrderNumber(tempOrder);
		tempO.setOrderid(tempOrder.getOrderid());
		System.out.println("this is assigned order number in first time orderitem" + tempOrder.getOrderid());
		
		//validates that a record has been selected
		System.out.println("Item ID" + item.getItemid());
		if (item.getItemid() == 0) {
		result.rejectValue("itemid", "error.erroritemid");
		List<Item> allItems = dao.getAllItems();
		modelAndView.setViewName("contViewAllItems");
		modelAndView.addObject("all", allItems);
		modelAndView.addObject("tempCustomer", tempCustomer);
		return modelAndView;
		}
		List<Item> allSelectedItems = dao.getAllSelectedItems(item);
		modelAndView.setViewName("orderItem");
		modelAndView.addObject("all", allSelectedItems);
		modelAndView.addObject("tempCustomer", tempCustomer);
		modelAndView.addObject("orderNumber", tempOrder);
		return modelAndView;
	}

	//view selected item AFTER Order is created
	@RequestMapping(value = "/viewSelectedItemCont")
	public ModelAndView viewSelectedItemCont(@ModelAttribute("orderNumber") Order tempOrder, @ModelAttribute("tempCustomer") Customer tempCustomer, @ModelAttribute("item") Item item, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		
		//validates that a record has been selected
		if (item.getItemid() == 0) {
		result.rejectValue("itemid", "error.erroritemid");
		List<Item> allItems = dao.getAllItems();
		modelAndView.setViewName("contViewAllItems");
		modelAndView.addObject("all", allItems);
		modelAndView.addObject("tempCustomer", tempCustomer);
		modelAndView.addObject("orderNumber", tempOrder);
		return modelAndView;
		}
		List<Item> allSelectedItems = dao.getAllSelectedItems(item);
		modelAndView.setViewName("contOrderItem");
		modelAndView.addObject("all", allSelectedItems);
		modelAndView.addObject("tempCustomer", tempCustomer);
		modelAndView.addObject("orderNumber", tempOrder);
		return modelAndView;
	}

	@RequestMapping(value = "/writeOrder")
	public ModelAndView writeCustomerOrder(@ModelAttribute("orderNumber") Order tempOrder, @ModelAttribute("tempCustomer") Customer tempCustomer, @ModelAttribute("tempitem") Item item, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		//validation of inputs
		int tQ;
		boolean error = false;
		try {
		    tQ = Integer.parseInt(item.getQuantity());
		}
		catch (Exception e){
			result.rejectValue("quantity", "error.quantity");
			List<Item> allSelectedItems = dao.getAllSelectedItems(item);
			modelAndView.setViewName("contOrderItem");
			modelAndView.addObject("all", allSelectedItems);
			modelAndView.addObject("tempCustomer", tempCustomer);
			modelAndView.addObject("orderNumber", tempOrder);
			return modelAndView;
			
		}
		
		if(tQ == 0){
		result.rejectValue("quantity", "error.quantity");
		error = true;
		}
		
		if(error) {
			List<Item> allSelectedItems = dao.getAllSelectedItems(item);
			modelAndView.setViewName("contOrderItem");
			modelAndView.addObject("all", allSelectedItems);
			modelAndView.addObject("tempCustomer", tempCustomer);
			modelAndView.addObject("orderNumber", tempOrder);
			return modelAndView;
		}
		
		OrderItem oItem = new OrderItem();
		oItem.setOrderid(tempO.getOrderid());
		oItem.setItemid(item.getItemid());
		oItem.setItemname(item.getItemname());
		oItem.setTotalcost(dao.getTotalProdCost(Integer.parseInt(item.getQuantity()), item));
		oItem.setQuantity(Integer.parseInt(item.getQuantity()));
		oItem.setPaid(0.0);
		tempCost = tempCost + oItem.getTotalcost();
		//persists the item to the customers order.
		dao.insertOrderItem(oItem);
		
		List<OrderItem> allOrderItems = dao.getAllOrderItems(tempO);
		modelAndView.setViewName("viewOrder");
		modelAndView.addObject("all", allOrderItems);
		return modelAndView;
	}
	
	//delete an item from the users order list
	@RequestMapping(value = "/delete")
	public ModelAndView delete(@ModelAttribute("orderitem") OrderItem oi, BindingResult result ){
		ModelAndView modelAndView = new ModelAndView();
		
		//validates that a record has been selected
		if (oi.getOrderitemid() == 0) {
		result.rejectValue("orderitemid", "error.orderitemiderror");
		List<OrderItem> allOrderItems = dao.getAllOrderItems(tempO);
		modelAndView.setViewName("viewOrder");
		modelAndView.addObject("all", allOrderItems);
		return modelAndView;
		}
		
		dao.deleteOrderItem(oi);
		List<OrderItem> allOrderItems = dao.getAllOrderItems(tempO);
		modelAndView.setViewName("viewOrder");
		modelAndView.addObject("all", allOrderItems);
		return modelAndView;
	}

	
	@RequestMapping(value="/viewOrder")
	public ModelAndView viewOrder() {
		ModelAndView modelAndView = new ModelAndView( );
        List<OrderItem> allOrderItems = dao.getAllOrderItems(tempO);
		modelAndView.setViewName("viewOrder");
		modelAndView.addObject("all", allOrderItems);
		return modelAndView;
	}
	
	//login screen
	@RequestMapping(value = "/login")
	public ModelAndView customerLogin( ){
		ModelAndView modelAndView = new ModelAndView( );
		modelAndView.setViewName("login");
		modelAndView.addObject("customer", new Customer( ));

		return modelAndView;
	}


	//login effect
	@RequestMapping(value = "/loginAttempt")
	public ModelAndView customerLoginAttempt(@ModelAttribute("customer") Customer customer, BindingResult result){
		ModelAndView modelAndView = new ModelAndView( );
		Customer user = new Customer();
		boolean error = false;

		if(customer.getUsername().isEmpty()){
			result.rejectValue("username", "error.username");
			error = true;
	    }

		if(customer.getPassword().isEmpty()){
			result.rejectValue("password", "error.password");
			error = true;
	    }

		if(error) {
			modelAndView.setViewName("login");
			return modelAndView;
		}

        try {
		 user = dao.usernameLogin(customer);
        } catch (Exception e){
        	result.rejectValue("username", "error.userDoesNotExist");
        	result.rejectValue("password", "error.passwordDoesNotExist");
        	modelAndView.setViewName("login");
        	return modelAndView;
        }
        Order temp = dao.getCustOrderNum(user);
        List<OrderItem> allOrderItems = dao.getAllOrderItems(temp);
		modelAndView.setViewName("customerLogged");
		modelAndView.addObject("user", user);
		modelAndView.addObject("all", allOrderItems);
		modelAndView.addObject("ordercost", temp);

		return modelAndView;
	}

	// Homepage
	@RequestMapping(value = "/home")
	public ModelAndView home( ){
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home");
		return modelAndView;
	}
}
