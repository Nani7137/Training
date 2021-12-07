package com.sonata;



public class Ford extends Car {
	int year;
	float manufacturerDiscount;
	Ford(int speed,double regularPrice,String color,int year,float manufacturerDiscount)
	{
		super(speed,regularPrice,color);
		this.year=year;
		this.manufacturerDiscount = manufacturerDiscount;
	}
	public double getSalePrice() {
		Car cr = new Car();
		//float f = this.manufacturerDiscount;
		double dis = this.manufacturerDiscount/100;
		
		double totaldis = dis * cr.regularPrice ;
		double total = cr.regularPrice - totaldis;
		
		return total;
	}
	
	public static void main(String[] args) {
	
		Car cr = new Car();
		cr.regularPrice = 90000;
		
		
		System.out.println("From the sale price computed from Car class, subtract the manufacturerDiscount");
		
				
		
	
	}
	

}