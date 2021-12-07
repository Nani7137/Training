package com.sonata;
import java.util.Scanner;

public class SwitchCond {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner scn = new Scanner(System.in);
		
		System.out.println("Enter your String :");
		String a = scn.next();
		
		switch(a) {
		case "hello":
			System.out.println("This is a case one");
			break;
		case "hai":
			System.out.println("This is a case two");
			break;
		case "how":
			System.out.println("This is a case three");
			break;
		case "bye":
			System.out.println("This is a case four");
			break;
		}
		

	}

}
