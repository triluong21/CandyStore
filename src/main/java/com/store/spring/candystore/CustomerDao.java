package com.store.spring.candystore;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class CustomerDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("CandyStore");
	
	//to insert a new customer to the database using the temporary assigned customerid and orderid
	public void insertCustomer(double tempCost, Order tempO, Customer tempC, Customer customerToAdd){
		EntityManager em = emfactory.createEntityManager();
		Customer customer = em.find(Customer.class, tempC.getCustomerid());
		em.getTransaction().begin();
		customer.setFirstname(customerToAdd.getFirstname());
		customer.setLastname(customerToAdd.getLastname());
		customer.setAddress(customerToAdd.getAddress());
		customer.setCity(customerToAdd.getCity());
		customer.setState(customerToAdd.getState());
		customer.setZip(customerToAdd.getZip());
		customer.setCountry(customerToAdd.getCountry());
		customer.setEmail(customerToAdd.getEmail());
		customer.setUsername(customerToAdd.getUsername());
		customer.setPassword(customerToAdd.getPassword());
		em.getTransaction().commit();
		Order order = em.find(Order.class,  tempO.getOrderid());
		em.getTransaction().begin();
		order.setShipaddress(customerToAdd.getAddress());
		order.setShipcity(customerToAdd.getCity());
		order.setShipstate(customerToAdd.getState());
		order.setShipzip(customerToAdd.getZip());
		order.setShipcountry(customerToAdd.getCountry());
		if (customerToAdd.getCountry().contentEquals("United States")) {
			order.setShipcost(5.50);
			tempCost = tempCost + 5.50;
		} else if (customerToAdd.getCountry().contentEquals("Canada")) {
			order.setShipcost(10.75);
			tempCost = tempCost + 5.50;
		} else {
			order.setShipcost(7.50);
			tempCost = tempCost + 7.50;
		}
		order.setOrdercost(tempCost);
		em.getTransaction().commit();
		em.close();
	}
	
	//to query the customer list to display it
	public List<Customer> getAllCustomers() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select c from Customer c";
		TypedQuery<Customer> typedQuery = em.createQuery(q, Customer.class);
		List<Customer> all = typedQuery.getResultList();
		return all;
	}
	
	//View all items in the catalog page
	public List<Item> getAllItems() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Item u";
		TypedQuery<Item> typedQuery = em.createQuery(q, Item.class);
		List<Item> all = typedQuery.getResultList();
		em.close();
		return all;
	}

	//view selected item
	public List<Item> getAllSelectedItems(Item itemidpara) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Item u where u.itemid = :selectedId";
		TypedQuery<Item> typedQuery = em.createQuery(q, Item.class);
		typedQuery.setParameter("selectedId", itemidpara.getItemid());
		List<Item> all = typedQuery.getResultList();
		em.close();
		return all;
	}
	
	//calculating totalcost for item in orderitems table
	public double getTotalProdCost(int quantity, Item item) {
		double totalCost = 0.0;
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Item u where u.itemid = :selectedId";
		TypedQuery<Item> typedQuery = em.createQuery(q, Item.class);
		typedQuery.setParameter("selectedId", item.getItemid());
		Item result = typedQuery.getSingleResult();
		totalCost = quantity * result.getCost();
		double totalCostRound = Math.round(totalCost*100.0)/100.0;
		return totalCostRound;
	}
	
	//view all orderitems from one customers order
	public List<OrderItem> getAllOrderItems(Order order) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from OrderItem u where u.orderid = :selectedId";
		TypedQuery<OrderItem> typedQuery = em.createQuery(q, OrderItem.class);
		typedQuery.setParameter("selectedId", order.getOrderid());
		List<OrderItem> all = typedQuery.getResultList();
		return all;
	}
	
	//order history
	public Order getCustOrderNum(Customer customer) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Order u where u.customerid = :selectedId";
		TypedQuery<Order> typedQuery = em.createQuery(q, Order.class);
		typedQuery.setParameter("selectedId", customer.getCustomerid());
		Order result = typedQuery.getSingleResult();
		return result;
	}
	
	//assign customer number
	public void assignCustomerNumber(Customer tempCustomer){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(tempCustomer);
		em.getTransaction().commit();
		em.close();
	}
	
	//assign order number
		public void assignOrderNumber(Order tempOrder){
			EntityManager em = emfactory.createEntityManager();
			em.getTransaction().begin();
			em.persist(tempOrder);
			em.getTransaction().commit();
			em.close();
		}
	
	//adds an item to a customers order
	public void insertOrderItem(OrderItem itemToAdd){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(itemToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
	//find a customer
	public Customer findCustomer(Customer custToFind) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Customer u where u.customerid = :selectedId";
		TypedQuery<Customer> typedQuery = em.createQuery(q, Customer.class);
		typedQuery.setParameter("selectedId", custToFind.getCustomerid());
		typedQuery.setMaxResults(1);
		Customer result = typedQuery.getSingleResult();

		return result;
	}
	
	//login attempt method
	public Customer usernameLogin(Customer user) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Customer u where u.username = :selectedUsername and u.password = :selectedPassword";
		TypedQuery<Customer> typedQuery = em.createQuery(q, Customer.class);
		typedQuery.setParameter("selectedUsername", user.getUsername());
		typedQuery.setParameter("selectedPassword", user.getPassword());
		typedQuery.setMaxResults(1);
		Customer result = typedQuery.getSingleResult();

		return result;
		
	}

	
}
