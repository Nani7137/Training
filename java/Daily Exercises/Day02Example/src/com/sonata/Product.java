package com.sonata;

public abstract class Product {
	int pId;
	String pName;
	double pPrice;
	
	Product(int pId, String pName, double pPrice){
		this.pId =  pId;
		this.pName =  pName;
		this.pPrice =  pPrice;
	}
	public abstract void demo();
	
	public double totalPrice(double pPrice) {
		double gst = 2f/100;
		//System.out.println(gst);
		double totalgst = gst * pPrice ;
		double total = totalgst + pPrice;
		return total;
	}
	public void display() {
		System.out.println("Product id is : "+pId);
		System.out.println("Product Name is : "+pName);
		System.out.println("Product Price is : "+pPrice);
	}
}
