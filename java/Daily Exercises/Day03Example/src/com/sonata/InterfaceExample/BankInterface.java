package com.sonata.InterfaceExample;

public interface BankInterface {
	int abc = 150;
	
	public double deposite(double amount); 
	public double withdraw(double amount);
	
	default void newAccount() {
		System.out.println("This is not overriden default method ");
		newAccount2();
	}
	private void newAccount2() {
		System.out.println("This is not overriden private method ");
	}
	static void newAccount3() {
		System.out.println("This is not overriden static method ");
	}
}
