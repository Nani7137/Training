package com.sonata;


public class Truck extends Car {
	int weight;
	// If weight > 2000, 10% discount. Otherwise, 20% discount.
	
	Truck(int a, double b, String c, int d){
		super(a,b,c);
		this.weight = d;
	}
	
	double getSalePrice() {
		if(this.weight>2000) {
			return super.getSalePrice(10);
		}
		else {
			return super.getSalePrice(20);
		}
	}
	public static void main(String[] args) {
		Truck tr = new Truck(200, 90000, "red",3000);
		
		
		System.out.println(tr.getSalePrice());
	}
}
