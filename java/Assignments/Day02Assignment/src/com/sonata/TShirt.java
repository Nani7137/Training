package com.sonata;

public class TShirt {
	String color;
	String material;
	String design;
	
	TShirt(String a,String b, String c){
		this.color = a;
		this.material = b;
		this.design = c;
	}
	
	void display() {
		System.out.println("The T-Shirt Colr is : "+color);
		System.out.println("The T-Shirt Material is : "+material);
		System.out.println("The T-Shirt Design is : "+design);
	}
	
	public static void main(String[] args) {
		TShirt ts1 = new TShirt("red", "cotton", "small");
		ts1.display();
		System.out.println("\n");
		TShirt ts2 = new TShirt("orange", "silk", "large");
		ts2.display();
		
		System.out.println("\n");
		TShirt ts3 = new TShirt("yellow", "fiber", "xtra-large");
		ts3.display();
	}

}
