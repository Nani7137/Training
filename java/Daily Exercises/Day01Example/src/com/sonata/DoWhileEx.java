package com.sonata;
import java.util.*;

public class DoWhileEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner scn = new Scanner(System.in);
		
		int j;
		
		
		do {
			System.out.println("Enter a number ");
			j = scn.nextInt();
			
			if(j<100) {
				System.out.println("Your Entered Value is below Hundread : "+j);
			}
			else {
				System.out.println("Your Entered Value is above Hundread : "+j);
				break;
			}
		}while(j<1000);

	}
}
