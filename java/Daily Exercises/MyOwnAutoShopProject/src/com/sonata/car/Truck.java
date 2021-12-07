package com.sonata.car;



public class Truck extends Car {
	int weight;
	// If weight > 2000, 10% discount. Otherwise, 20% discount.
	
	Truck(int a, double b, String c){
		//this.weight = weight;
		super(a,b,c);
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
		Truck tr = new Truck(200, 90000, "red");
		tr.weight = 3000; 
		
		System.out.println(tr.getSalePrice());
	}
}
