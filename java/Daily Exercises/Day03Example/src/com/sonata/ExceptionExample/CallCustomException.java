package com.sonata.ExceptionExample;

public class CallCustomException{
	public static void main(String[] args)  throws MyOwnException {
		int age = 25;
		if(age < 18) {
			throw new MyOwnException("You are not eligible for vote");		
		}else {
			System.out.println("Welcome to vote");
		}
	}
}
