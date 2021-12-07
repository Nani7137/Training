package com.sonata.ExceptionExample;
import java.lang.ArrayIndexOutOfBoundsException;

public class SimpleException {
	public void add() throws ArrayIndexOutOfBoundsException{
		try {
			int c = 10/1;
			int[] a = {1,2,3,4};
			int d = a[5];
		}catch(ArrayIndexOutOfBoundsException e){
			System.out.println("Please enter proper index number : "+e);
		}finally {
			System.out.println("------finally block---------");
		}
			
	}
	public static void main(String[] args) {
		SimpleException se = new SimpleException();
		
		se.add();
	}

}
