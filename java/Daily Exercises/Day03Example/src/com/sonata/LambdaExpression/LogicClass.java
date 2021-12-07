package com.sonata.LambdaExpression;

public class LogicClass implements MyOneInterface {

	@Override
	public void display() {
		System.out.println("show thi my display");
		
	}
	public static void main(String[] args) {
		LogicClass ls = new LogicClass();
			ls.display();
		
	}
	

}
