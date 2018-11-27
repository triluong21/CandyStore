package com.store.spring.candystore;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class CustomerDao {
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("CandyStore");
	
	public void insertCustomer(Customer customerToAdd){
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(customerToAdd);
		em.getTransaction().commit();
		em.close();
	}
	
	public List<Customer> getAllCustomers() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select c from Customer c";
		TypedQuery<Customer> typedQuery = em.createQuery(q, Customer.class);
		List<Customer> all = typedQuery.getResultList();
		return all;
	}

	public List<Item> getAllItems() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		System.out.println("before query built");
		String q = "select u from Item u";
		System.out.println("after query built");
		System.out.println(q);
		TypedQuery<Item> typedQuery = em.createQuery(q, Item.class);
		List<Item> all = typedQuery.getResultList();
		return all;
	}

}
