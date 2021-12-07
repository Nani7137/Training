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
	
		Car.regularPrice = 90000;
		
		//Ford fr = new Ford(200,90000,"red",2022,20f);
		//System.out.println(fr.getSalePrice());
		System.out.println("From the sale price computed from Car class, subtract the manufacturerDiscount");
		
				
		
	
	}
	

}