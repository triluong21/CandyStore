package com.store.spring.candystore;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orderitems")
public class Orderitem {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int orderid;
	private int itemnumber;
	private int itemid;
	private double quantity;
	private double paid;
	
	public Orderitem() {
		super();
	}
	
	public Orderitem(int orderid, int itemnumber, int itemid, double quantity, double paid) {
		super();
		this.orderid = orderid;
		this.itemnumber = itemnumber;
		this.itemid = itemid;
		this.quantity = quantity;
		this.paid = paid;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getItemnumber() {
		return itemnumber;
	}

	public void setItemnumber(int itemnumber) {
		this.itemnumber = itemnumber;
	}

	public int getItemid() {
		return itemid;
	}

	public void setItemid(int itemid) {
		this.itemid = itemid;
	}

	public double getQuantity() {
		return quantity;
	}

	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}

	public double getPaid() {
		return paid;
	}

	public void setPaid(double paid) {
		this.paid = paid;
	}
	
	
}
