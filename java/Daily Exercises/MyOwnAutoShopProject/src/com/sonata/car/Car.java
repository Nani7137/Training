package com.sonata.car;

public class Car {
	int speed;
	public static double regularPrice;
	String color;
	
	public Car(){
		
	}
	
	public Car(int a, double b, String c){
		this.speed = a;
		this.regularPrice = b;
		this.color = c;
	}
	
	public static double getSalePrice(float percent) {
		double gst = percent/100;
		double totalgst = gst * regularPrice;
		double total = totalgst + regularPrice;
		return total;
	}
	public void display() {
		System.out.println("The Car Speed is "+speed);
		System.out.println("The Car Regular Price is "+regularPrice);
		System.out.println("The Car Color is "+color);
	}

}
