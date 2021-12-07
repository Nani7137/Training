package com.sonata.InterfaceExample;

public class Bank {
	private int accId;
	private String accName;
	private double amount;
	
	public int getAccId() {
		return accId;
	}
	public void setAccId(int accId) {
		this.accId = accId;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public Bank() {
		
	}
	public Bank(int a, String b, double c) {
		this.accId = a;
		this.accName = b; 
		this.amount = c;
		
	}
	
	void display() {
		System.out.println("Account Id is : "+accId);
		System.out.println("Account Name is : "+accName);
		System.out.println("Account Balane is : "+amount);
	}
}
