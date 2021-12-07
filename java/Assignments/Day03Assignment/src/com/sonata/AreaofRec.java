package com.sonata;

public class AreaofRec extends Shape {
	
	public double rectangle(double length, double width) {
		return length * width;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AreaofRec ar = new AreaofRec();
		System.out.println("Area of Rectangle is : "+ar.rectangle(3.4, 7.8));
		
	}

}
