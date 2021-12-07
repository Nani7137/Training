package com.sonata;

public class MultiDimArrayEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		int[][]  a = new int[5][20];
		
		// inserting
		for(int i=0; i<a.length; i++) {
			for(int j=0; j<20; j++) {
				a[i][j] = j;
			}
		}
		
		// retriving
		for(int i=0; i<a.length; i++) {
			for(int j=0; j<20; j++) {
				System.out.println("Retriving data in multi dimensional array : "+a[i][j]);
			}
		}

	}

}
