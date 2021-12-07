package com.sonata.InterfaceExample;

public class SavingAccount extends Bank {
	SavingAccount(int a , String b , double c){
		super(a, b, c);		
	}
	
	//@Override
	public double deposite(double amount) {
	
		 double x = getAmount()+amount;
		setAmount(x);
		return x; 
	}

	//@Override
	public double withdraw(double amount) throws MyOwnException{
		
			
		
			if(amount < getAmount() && getAmount() >= 1000 ) {
				System.out.println("You Successfully withdraw your amount.. ");
				double y = getAmount()-amount;
				setAmount(y);
				
			}else if(amount > getAmount()){
				throw new MyOwnException("You have insufficient funds..");
			}else {
				throw new MyOwnException("You have must mantain minimum balance...");
			}
		return getAmount();
		//super.amount -= amount;
		//return super.amount;
		/*double y = getAmount()-amount;
		setAmount(y);
		return y;*/
	}
	
	
	public static void main(String[] args) throws MyOwnException {
		SavingAccount sa = new SavingAccount(101, "Nani M", 27000);
		//BankInterface bi = new BankInterface();
		//sa.newAccount();
		//BankInterface.newAccount3();
		
		System.out.println("\n");
		sa.display();
		
		/*System.out.println("\n");
		sa.deposite(5000);
		sa.display();*/
		
		System.out.println("\n");
		sa.withdraw(27000);
		sa.display();
	
	}

}


