//
//  Solution07.m
//  iOS
//
//  Created by yuan on 2019/3/11.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution07.h"

@implementation Solution07

- (int)searchInsert:(NSArray *)nums target:(int)target{
    int res = 0;
    
    if (target <= [nums[0] intValue]) {
        return res;
    }
    
    if (target > [nums.lastObject intValue]) {
        return (int)nums.count;
    }
    
    for (int i = 0; i < nums.count; i++) {
        int item = [nums[i] intValue];
        if (item >= target) {
            return i;
        }
    }
    return res;
}

@end
