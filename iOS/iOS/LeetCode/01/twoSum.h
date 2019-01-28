//
//  twoSum.h
//  iOS
//
//  Created by yuan on 2019/1/28.
//  Copyright © 2019 yuan. All rights reserved.
//

/*
 01-两数之和
 
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 给定 nums = [1,2, 7, 8,11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 
 所以返回 [0, 1]
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface twoSum : NSObject

- (NSArray *)twoSum:(NSArray *)nums target:(int)target;

@end

NS_ASSUME_NONNULL_END
