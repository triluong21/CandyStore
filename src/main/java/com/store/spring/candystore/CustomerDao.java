package com.store.spring.candystore;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class CustomerDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("CandyStore");
	
	//to insert a new customer to the database
	public void insertCustomer(Customer customerToAdd){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(customerToAdd);
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

<<<<<<< HEAD
	//to query the items list to display it
=======
	//View all item in Catalog page
>>>>>>> pr/5
	public List<Item> getAllItems() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Item u";
		TypedQuery<Item> typedQuery = em.createQuery(q, Item.class);
		List<Item> all = typedQuery.getResultList();
		return all;
	}

	//View all selected item
	public List<Item> getAllSelectedItems(Item itemidpara) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select u from Item u where u.itemid = :selectedId";
		TypedQuery<Item> typedQuery = em.createQuery(q, Item.class);
		typedQuery.setParameter("selectedId", itemidpara.getItemid());
		List<Item> all = typedQuery.getResultList();
		return all;
	}

	
}
