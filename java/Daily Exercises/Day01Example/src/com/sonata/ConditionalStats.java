package com.sonata;
import java.util.Scanner;


public class ConditionalStats {
	public static void main(String[] args) {
		Scanner scn = new Scanner(System.in);
		
		System.out.print("Enter Your First Number : ");
		int a = scn.nextInt();
		
		System.out.print("Enter Your Second Number : ");
		int b = scn.nextInt();
		
		System.out.print("Enter Your Thired Number : ");
		int c = scn.nextInt();
		
		if(a>b && a>c)
			System.out.println(a + " is Big");
		else if(b>a && b>c)
			System.out.println(b + " is big");
		else
			System.out.println(c + " is big");
	}
}
