package com.sonata;

public class ContainsSpecificValue {

	public static boolean contains(int[] arr, int item) {
	      for (int n=0; n<arr.length; n++) {
	         if (item == arr[n]) {
	            return true;
	         }
	      }
	      return false;
	   }
	   public static void main(String[] args) {
	          int[] my_array1 = {1789, 2035, 1899, 1456, 2013,1458, 2458, 1254, 1472, 2365};
	      System.out.println(contains(my_array1, 2013));
	      System.out.println(contains(my_array1, 2015));
	   }

}
