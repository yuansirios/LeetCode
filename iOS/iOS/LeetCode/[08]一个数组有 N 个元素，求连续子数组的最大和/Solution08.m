//
//  Solution08.m
//  iOS
//
//  Created by yuan on 2019/12/4.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution08.h"

@implementation Solution08

/**
 暴力遍历。从i=0开始到i=a.length-1，开始往后加，遍历所有的子数组，然后比较每一个子数组的和。
 时间复杂度O(n^2)，空间复杂度O(1)。
 */
- (int)calMaxSumOfArray:(NSArray *)a {
    if (nil == a) {
        return 0;
    }
    if (a.count == 1) {
        return [a[0] intValue];
    }
    int sum = [a[0] intValue];
    int temp;
    for (int i = 0; i < a.count - 1; i++) {
        temp = [a[i] intValue];
        //开始从a[i]往它之后遍历，相加，再跟sum对比
        for (int j = i + 1; j < a.count; j++) {
            temp = temp + [a[j] intValue];
            if(sum < temp) {
                
                NSLog(@"%d,%d",[a[i] intValue],[a[j]intValue]);
                sum = temp;
            }
        }
    }
    return sum;
}

/**
 动态规划。状态方程：max(dp[i]) = getMax(max(dp[i-1]) + a[i], a[i])。
 我们从头开始遍历数组，遍历到a[i]时，最大和可能是max(dp[i-1])+a[i]，也可能是a[i]。
 时间复杂度O(n)，空间复杂度O(n)。
 */
- (int)calMaxSumOfArray2:(NSArray *)a {
    if (nil == a) {
        return 0;
    }
    if (a.count == 1) {
        return [a[0] intValue];
    }
    int sum = [a[0] intValue];
    int temp = [a[0] intValue];
    for (int i = 1; i < a.count; i++) {
        temp = max(temp + [a[i] intValue], [a[i] intValue]);
        if (sum < temp) {
            sum = temp;
        }
    }
    return sum;
}

int max(int a, int b) {
    return a > b ? a : b;
}

/**
 非动态规划的方法。我们从头开始累加，初始sum=a[0]，临时变量temp=a[0]。
 从i=1开始，temp = temp+a[i]，如果temp小于0，
 并且发现前面加过的数小于sum，那么舍弃前面的累加值，从i+1开始。
 */
- (int)calMaxSumOfArray3:(NSArray *)arr{
    if (arr == nil) {
        return 0;
    }
    if (arr.count == 1) {
        return [arr[0] intValue];
    }
    
    int sum = [arr[0] intValue];
    int temp = [arr[0] intValue];
    
    for (int i = 1; i < arr.count; i++) {
        if (temp < 0) {
            temp = 0;
        }
        
        temp += [arr[i] intValue];
        if (temp > sum) {
            sum = temp;
        }
    }
    
    return sum;
    
}


@end
