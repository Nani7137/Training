package com.sonata.Annotation;

class A{
	public void showData() {
		System.out.println("super class A...");
	}
}
class B extends A{
	@Deprecated
	public void show() {
		System.out.println("Deprecated method...");
	}
	@Override
	@SuppressWarnings("unchecked")
	public void showData() {
		System.out.println("sub class B.......");
	}
}
public class MarkerAnnotationExample {
	public static void main(String[] args) {
		B x = new B();
		x.showData();
	}
}
