package com.leetcode.test;

import java.util.Arrays;

public class test01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Hello World");
		
		int[] a = {1,2,7,8,11,15};
		
		int[] result = twoSum(a, 9);
		
		System.out.println(Arrays.toString(result));
	}

	public static int[] twoSum(int[] nums,int target) {
		
		for (int i = 0; i < nums.length; i++) {
	        
	        for (int j = i+1; j < nums.length - 1; j++) {
	            
	            int numA = (int)nums[i];
	            int numB = (int)nums[j];
	            
	            if (numA + numB == target) {
	            	 return new int[]{i,j};
	            }
	        }
	    }
		return null;
	}
}
