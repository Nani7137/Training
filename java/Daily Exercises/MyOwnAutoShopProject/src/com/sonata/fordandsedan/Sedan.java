package com.sonata.fordandsedan;
import com.sonata.car.Car;

public class Sedan {
	int length;
	
	public Sedan(int a){
		this.length = a;
	}
	
	public double getSalePrice() {
		if(this.length>20) {
			return Car.getSalePrice(5f);
		}
		else {
			return Car.getSalePrice(10f);
		}
	}
	
	public static void main(String[] args) {
		Sedan sd = new Sedan(30);
		
		Car.regularPrice = 9000;
		
		System.out.println("If length > 20 feet, 5% discount, Otherwise, 10% discount..");
		System.out.println(sd.getSalePrice());
	}
}
