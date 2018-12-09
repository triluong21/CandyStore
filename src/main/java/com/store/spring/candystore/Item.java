package com.store.spring.candystore;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="items")
public class Item {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int itemid;
	private String itemname;
	private String itemcolor;
	private double cost;
	private String quantity;
	private double retail;
	
	
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getItemid() {
		return itemid;
	}
	
	public Item(String itemname, String itemcolor, double cost, String quantity, double retail) {
		super();
		this.itemname = itemname;
		this.itemcolor = itemcolor;
		this.cost = cost;
		this.quantity = quantity;
		this.retail = retail;
	}
	
	
	public void setItemid(int itemid) {
		this.itemid = itemid;
	}
	
	public String getItemname() {
		return itemname;
	}
	
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	
	public String getItemcolor() {
		return itemcolor;
	}
	
	public void setItemcolor(String itemcolor) {
		this.itemcolor = itemcolor;
	}
	
	public double getCost() {
		return cost;
	}
	
	public void setCost(double cost) {
		this.cost = cost;
	}
	
	public String getQuantity() {
		return quantity;
	}
	
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	
	public double getRetail() {
		return retail;
	}
	
	public void setRetail(double retail) {
		this.retail = retail;
	}
	
}
