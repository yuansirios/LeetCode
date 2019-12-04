//
//  Solution10.m
//  iOS
//
//  Created by yuan on 2019/12/4.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution10.h"

@implementation Solution10

//用Set不重复
- (NSSet *)getAllKH:(int)a{
    NSMutableSet *result = NSMutableSet.new;
    if (a == 1) {
        [result addObject:[NSString stringWithFormat:@"()"]];
    }else{
        NSMutableSet *nextRes = [self getAllKH:a-1].mutableCopy;
        for (NSString *s in nextRes) {
            
            NSString *str = [NSString stringWithFormat:@"%@()",s];
            NSString *str1 = [NSString stringWithFormat:@"()%@",s];
            NSString *str2 = [NSString stringWithFormat:@"(%@)",s];
            [result addObject:str];
            [result addObject:str1];
            [result addObject:str2];
        }
    }
    return result.copy;
}

@end
