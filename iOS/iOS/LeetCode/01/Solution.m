//
//  twoSum.m
//  iOS
//
//  Created by yuan on 2019/1/28.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution.h"

@implementation Solution

- (NSArray *)twoSum:(NSArray *)nums target:(int)target{
    
    for (int i = 0; i < nums.count; i++) {
        
        for (int j = i+1; j < nums.count - 1; j++) {
            
            int numA = [nums[i] intValue];
            int numB = [nums[j] intValue];
            
            if (numA + numB == target) {
                return @[@(i),@(j)];
            }
        }
    }
    return nil;
}

@end
