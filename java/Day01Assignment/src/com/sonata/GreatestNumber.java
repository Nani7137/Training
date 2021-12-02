package com.sonata;

public class GreatestNumber {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int a = 12;
		int b = 25;
		int c = 89;
		
		if(a>b && a>c)
			System.out.println("The value "+a+" is big.");
		else if(b>a && b>c)
			System.out.println("The value "+b+" is big.");
		else
			System.out.println("The value "+c+" is big.");
	}

}
