package com.sonata.Annotation;

@FunctionalInterface
interface xyz{
	void display();
}
class Emp1 implements xyz{

	@Override
	public void display() {
		System.out.println("This is an override method....");		
	}
	public void myData() {
		System.out.println("myData Method...");
	}
}
class EmpShow extends Emp1{
	@Override
	public void myData() {
		System.out.println("Empshow class mydata method");
	}
	@Override
	public void display() {
		System.out.println("EmpShow class display method.");
	}
}
public class AnnotationExample {
	public static void main(String[] args) {
		EmpShow es = new EmpShow();
		es.display();
	}
}
