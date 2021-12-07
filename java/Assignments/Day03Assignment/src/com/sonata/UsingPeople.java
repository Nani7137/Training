package com.sonata;

public class UsingPeople {

	public static void main(String[] args) {
		
		Address ad = new Address();
		TechnicalEmp te = new TechnicalEmp(101, "Nani M", ad, 27000, 5);
		
		Staff st = new Staff(102, "Raju M", ad, 20000, 5);
		
		te.display();
		System.out.println("Technical Employee Sal is : "+te.calculateSal());
		
		System.out.println("\n");
		st.display();
		System.out.println("Staff Sal is : "+st.calculateSal());
		
	}

}
