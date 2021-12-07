package com.sonata;

public class AreaofTriangle {
	public double triangle(double base , double height) {
		return (base * height)/2;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AreaofTriangle ar = new AreaofTriangle();
		System.out.println("Area of Rectangle is : "+ar.triangle(3.4, 5.6));
		
	}
}
