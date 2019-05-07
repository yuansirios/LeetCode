//
//  Solution07.h
//  iOS
//
//  Created by yuan on 2019/3/11.
//  Copyright © 2019 yuan. All rights reserved.
//  搜索插入位置
/*
 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
 
 你可以假设数组中无重复元素。
 
 示例 1:
 
 输入: [1,3,5,6], 5
 输出: 2
 示例 2:
 
 输入: [1,3,5,6], 2
 输出: 1
 示例 3:
 
 输入: [1,3,5,6], 7
 输出: 4
 示例 4:
 
 输入: [1,3,5,6], 0
 输出: 0

 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Solution07 : NSObject

- (int)searchInsert:(NSArray *)nums target:(int)target;

@end

NS_ASSUME_NONNULL_END
