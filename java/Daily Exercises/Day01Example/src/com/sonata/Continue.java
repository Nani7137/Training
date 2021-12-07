package com.sonata;

public class Continue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i;
		
		for(i=0; i<=5; i++) {
						
			if(i==3)
				continue;
			else
				System.out.println("Without Apllying comtinue " + i);
		}
	}

}
