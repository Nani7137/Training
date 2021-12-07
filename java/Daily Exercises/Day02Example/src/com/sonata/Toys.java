package com.sonata;

public class Toys extends Product {
	
	Toys(int a, String b, double c){
		super(a,b,c);
	}
	public void demo() {
		System.out.println("hello");
	}
	
	public double totalPrice(double c) {
		double total = super.totalPrice(c);
		return total;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Toys prd = new Toys(1,"remote car",28000);
		prd.display();
		
		System.out.println("\n");
		System.out.println(prd.totalPrice(28000));
		
		
	
	}

}
