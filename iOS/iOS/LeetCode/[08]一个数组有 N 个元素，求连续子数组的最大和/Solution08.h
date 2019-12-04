//
//  Solution08.h
//  iOS
//
//  Created by yuan on 2019/12/4.
//  Copyright © 2019 yuan. All rights reserved.
//

/**
一个数组有 N 个元素，求连续子数组的最大和。 例如：[-1,2,1]，和最大的连续子数组为[2,1]，其和为 3
*/

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Solution08 : NSObject

- (int)calMaxSumOfArray:(NSArray *)a;
- (int)calMaxSumOfArray2:(NSArray *)a;
- (int)calMaxSumOfArray3:(NSArray *)a;

@end

NS_ASSUME_NONNULL_END
