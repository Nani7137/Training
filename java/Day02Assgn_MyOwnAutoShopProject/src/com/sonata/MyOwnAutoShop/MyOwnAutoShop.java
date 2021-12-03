package com.sonata.MyOwnAutoShop;
import com.sonata.car.*;
import com.sonata.fordandsedan.*;

public class MyOwnAutoShop {

	public static void main(String[] args) {
		Sedan sd = new Sedan(30);
		
		Car.regularPrice = 9000;
		System.out.println("Data of Sedan Class....");
		System.out.println("If length > 20 feet, 5% discount, Otherwise, 10% discount..");
		System.out.println("Sedan Sales Price is : "+sd.getSalePrice());
		
		System.out.println("\n");
		System.out.println("Data of Ford Class....");
		Car cr = new Car();
		cr.regularPrice = 90000;
		
		Ford fr1 = new Ford(2021, 20);
		System.out.println("From the sale price computed from Car class, subtract the manufacturerDiscount");
		System.out.println("Ford Instance 1 Sales Price is : "+fr1.getSalePrice());
		Ford fr2 = new Ford(2021, 30);
		System.out.println("From the sale price computed from Car class, subtract the manufacturerDiscount");
		System.out.println("Ford Instance 2 Sales Price is : "+fr2.getSalePrice());
		
		System.out.println("\n");
		System.out.println("Data of Car Class....");
		System.out.println("An instance of Car class and and initialize all the fields with appropriate values.....");
		
		Car cp = new Car(200, 90000, "White");
		cp.display();
	}
}
