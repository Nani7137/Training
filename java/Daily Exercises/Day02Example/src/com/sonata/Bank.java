package com.sonata;

public class Bank {
	
	long accNo;
	String accName;
	double accBalance;
	
	Bank(long accNo, String accName, double accBalance){
		this.accNo = accNo;
		this.accName = accName;
		this.accBalance = accBalance;
	}
	public void deposite(int amount) {
		accBalance += amount;
	}
	public void withddraw(int amount) {
		accBalance -= amount;
	}
	public void display() {
		System.out.println("Account Number is : "+accNo);
		System.out.println("Account Name is : "+accName);
		System.out.println("Account Balance is : "+accBalance);
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bank bnk = new Bank(1231,"Nani M",2000);
		
		bnk.deposite(5000);
		
		bnk.display();

	}

}
