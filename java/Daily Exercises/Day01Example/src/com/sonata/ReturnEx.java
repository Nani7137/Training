package com.sonata;

public class ReturnEx {
	static int add(int a,int b) {
		return a+b;
	}
	
	public static void main(String[] args) {
		int c = add(5,7);
		System.out.println(ReturnEx.add(5,7)); 
		System.out.println(c);
	}
}
