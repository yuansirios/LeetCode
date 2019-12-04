//
//  Solution11.m
//  iOS
//
//  Created by yuan on 2019/12/4.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution11.h"

@implementation Solution11

- (void)swap:(int)a b:(int)b{
    int temp = a;
    a = b;
    b = temp;
    NSLog(@"%d:%d",a,b);
}

- (void)swap1:(int)a b:(int)b{
    a = a + b;
    b = a - b;
    a = a - b;
    NSLog(@"%d:%d",a,b);
}

- (void)swap2:(int)a b:(int)b{
    a = a * b;
    b = a / b;
    a = a / b;
    NSLog(@"%d:%d",a,b);
}

- (void)swap3:(int)a b:(int)b{
    a = a ^ b;
    b = a ^ b; //b = a ^ b ^ b = a;
    a = a ^ b;
    NSLog(@"%d:%d",a,b);
}

@end
