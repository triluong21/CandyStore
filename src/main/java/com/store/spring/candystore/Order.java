package com.store.spring.candystore;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Order {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int orderid;
	private int customerid;
	private String shipaddress;
	private String shipcity;
	private String shipstate;
	private String shipzip;
	private String shipcountry;
	private double shipcost;
	private double ordercost;
	
	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(String shipaddress, String shipcity, String shipstate, String shipzip,
			String shipcountry, double shipcost) {
		super();
		this.shipaddress = shipaddress;
		this.shipcity = shipcity;
		this.shipstate = shipstate;
		this.shipzip = shipzip;
		this.shipcountry = shipcountry;
		this.shipcost = shipcost;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getCustomerid() {
		return customerid;
	}

	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}

	public String getShipaddress() {
		return shipaddress;
	}

	public void setShipaddress(String shipaddress) {
		this.shipaddress = shipaddress;
	}

	public String getShipcity() {
		return shipcity;
	}

	public void setShipcity(String shipcity) {
		this.shipcity = shipcity;
	}

	public String getShipstate() {
		return shipstate;
	}

	public void setShipstate(String shipstate) {
		this.shipstate = shipstate;
	}

	public String getShipzip() {
		return shipzip;
	}

	public void setShipzip(String shipzip) {
		this.shipzip = shipzip;
	}

	public String getShipcountry() {
		return shipcountry;
	}

	public void setShipcountry(String shipcountry) {
		this.shipcountry = shipcountry;
	}

	public double getShipcost() {
		return shipcost;
	}

	public void setShipcost(double shipcost) {
		this.shipcost = shipcost;
	}

	public double getOrdercost() {
		return ordercost;
	}

	public void setOrdercost(double ordercost) {
		this.ordercost = ordercost;
	}

	
	
	
}
