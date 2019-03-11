//
//  Solution06.h
//  iOS
//
//  Created by yuan on 2019/1/28.
//  Copyright © 2019 yuan. All rights reserved.
//  最长公共前缀
/*
 编写一个函数来查找字符串数组中的最长公共前缀。
 
 如果不存在公共前缀，返回空字符串 ""。
 
 示例 1:
 
 输入: ["flower","flow","flight"]
 输出: "fl"
 示例 2:
 
 输入: ["dog","racecar","car"]
 输出: ""
 解释: 输入不存在公共前缀。
 说明:
 
 所有输入只包含小写字母 a-z 。
 */

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Solution06 : NSObject

- (NSString *)LongestCommonPrefix:(NSArray *)arr;

@end

NS_ASSUME_NONNULL_END
