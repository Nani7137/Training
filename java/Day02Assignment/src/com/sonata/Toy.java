package com.sonata;

public class Toy extends Product {
	
	Toy(int a, String b, double c){
		super(a,b,c);
	}
	
	
	public double totalPrice(double c) {
		double total = super.totalPrice(c);
		return total;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Toy prd = new Toy(1,"remote car",28000);
		prd.display();
		
		System.out.println("\n");
		System.out.println(prd.totalPrice(28000));
		
		
	
	}

}
