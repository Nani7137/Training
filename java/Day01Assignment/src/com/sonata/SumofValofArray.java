package com.sonata;

public class SumofValofArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[] i = {1,2,3,4,5,6};
		int sum = 0;
		
		for(int j=0; j<i.length; j++) {
			sum += i[j];
			
		}
		System.out.println("The sum of given array values is : "+sum);

	}

}
