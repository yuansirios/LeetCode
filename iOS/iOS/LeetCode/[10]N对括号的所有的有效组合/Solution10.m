//
//  Solution10.m
//  iOS
//
//  Created by yuan on 2019/12/4.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution10.h"

@implementation Solution10

- (NSArray *)getAllKH:(int)a{
    NSMutableArray *result = @[].mutableCopy;
    if (a == 1) {
        [result addObject:[NSString stringWithFormat:@"()"]];
    }else{
        NSMutableArray *nextRes = [self getAllKH:a-1].mutableCopy;
        for (NSString *s in nextRes) {
            
            NSString *str = [NSString stringWithFormat:@"%@()",s];
            NSString *str1 = [NSString stringWithFormat:@"()%@",s];
            NSString *str2 = [NSString stringWithFormat:@"(%@)",s];
            
            if (![result containsObject:str])  [result addObject:str];
            if (![result containsObject:str1]) [result addObject:str1];
            if (![result containsObject:str2]) [result addObject:str2];
        }
    }
    return result.copy;
}

@end
