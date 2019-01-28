//
//  Solution03.m
//  iOS
//
//  Created by yuan on 2019/1/28.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution03.h"

@implementation Solution03

- (signed)reverse:(signed)a{
    signed b = 0;
    for( ; a; a /= 10 ){
       b = b*10 + a%10;
    }
    return b;
}

@end
