package com.store.spring.candystore;

public class Item {
	private int itemid;
	private String itemname;
	private String itemcolor;
	private double cost;
	private int quantity;
	private double retail;
	
	
	
	public Item() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getItemid() {
		return itemid;
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
	
	public int getQuantity() {
		return quantity;
	}
	
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public double getRetail() {
		return retail;
	}
	
	public void setRetail(double retail) {
		this.retail = retail;
	}
	
}
