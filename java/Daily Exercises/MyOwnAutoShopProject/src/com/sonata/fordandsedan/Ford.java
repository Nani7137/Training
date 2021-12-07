package com.sonata.fordandsedan;
import com.sonata.car.*;

public class Ford {
	int year;
	int manufacturerDiscount;
	
		
	public Ford(int a, int b){
		this.year = a;
		this.manufacturerDiscount = b;
	}
	
	// From the sale price computed from Car class, subtract the manufacturerDiscount.
	
	public double getSalePrice() {
		Car cr = new Car();
		float f = this.manufacturerDiscount;
		double dis = f/100;
		//System.out.println(dis);
		double totaldis = dis * cr.regularPrice ;
		double total = cr.regularPrice - totaldis;
		
		return total;
	}
	
	public static void main(String[] args) {
	
		Car cr = new Car();
		cr.regularPrice = 90000;
		
		Ford fr = new Ford(2021, 20);
		System.out.println("From the sale price computed from Car class, subtract the manufacturerDiscount");
		System.out.println(fr.getSalePrice());
				
		
	
	}
	

}
