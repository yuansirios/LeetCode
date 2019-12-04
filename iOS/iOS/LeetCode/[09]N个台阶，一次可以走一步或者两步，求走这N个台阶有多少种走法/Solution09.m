//
//  Solution09.m
//  iOS
//
//  Created by yuan on 2019/12/4.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution09.h"

@implementation Solution09

- (int)getNValue:(int)n{
    
    if (n <= 1) return 1;
    if (n == 2) return 2;

    return [self getNValue:(n-1)] + [self getNValue:(n-2)] ;
}

@end
