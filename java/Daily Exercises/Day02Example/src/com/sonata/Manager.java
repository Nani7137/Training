package com.sonata;

public class Manager extends Employee{
	
	Manager(int a, String b, double c){
		super(a,b,c);
	}
	
	public double salCal(double HRA, double DA) {
		double total = super.salCal(HRA, DA)+2000;
		return total;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Manager mg = new Manager(202, "Nani", 2500);
		
		System.out.println(mg.salCal(300, 200));
		mg.display();
		
	}

}
