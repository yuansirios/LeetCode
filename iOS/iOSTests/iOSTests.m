//
//  iOSTests.m
//  iOSTests
//
//  Created by yuan on 2019/1/25.
//  Copyright © 2019 yuan. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ListNode.h"

@interface iOSTests : XCTestCase

@end

@implementation iOSTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

#pragma mark - *********** 01-两数之和 ***********
/*
 
 给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
 
 你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
 
 给定 nums = [1,2, 7, 8,11, 15], target = 9
 
 因为 nums[0] + nums[1] = 2 + 7 = 9
 
 所以返回 [0, 1]
 */

- (void)test01{
    NSArray *nums = @[@(2),@(5),@(7),@(13),@(18),@(9),@(11),@(15)];
    int target = 20;
    
    NSArray *result = [self twoSum:nums target:target];
    NSLog(@"%@",result);
    
}

- (NSArray *)twoSum:(NSArray *)nums target:(int)target{
    
    for (int i = 0; i < nums.count; i++) {
        
        for (int j = i+1; j < nums.count - 1; j++) {
            
            int numA = [nums[i] intValue];
            int numB = [nums[j] intValue];
            
            if (numA + numB == target) {
                return @[@(i),@(j)];
            }
        }
    }
    return nil;
}

#pragma mark - *********** 02-两数相加 ***********
/*
 给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
 
 如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
 
 您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
 
 示例：
 
 ```
 输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
 输出：7 -> 0 -> 8
 原因：342 + 465 = 807
 ```
 */

- (void)test02{
    ListNode *node;
    node = [ListNode addNode:node andVlaue:@(2)];
    node = [ListNode addNode:node andVlaue:@(4)];
    node = [ListNode addNode:node andVlaue:@(3)];
    
    ListNode *node2;
    node2 = [ListNode addNode:node2 andVlaue:@(5)];
    node2 = [ListNode addNode:node2 andVlaue:@(6)];
    node2 = [ListNode addNode:node2 andVlaue:@(4)];
    
    ListNode *sumNode = [self addTwoNumbers:node twoNode:node2];
    [ListNode traveraslList:sumNode resultBlock:^(NSInteger i) {
        NSLog(@">>>>> %zd",i);
    }];
}

//得到链表翻转数值
- (NSInteger)getNodeReverseValue:(ListNode *)node{
    ListNode *newNode = [ListNode reverseList:node];
    __block NSString *numStr = [NSString string];
    [ListNode traveraslList:newNode resultBlock:^(NSInteger i) {
        NSString *itemStr = [NSString stringWithFormat:@"%zd",i];
        numStr = [numStr stringByAppendingString:itemStr];
    }];
    return [numStr integerValue];
}

//字符串反转
- (NSString *)stringByReverse:(NSString *)orignStr{
    NSMutableString *string = [NSMutableString stringWithCapacity:orignStr.length];
    for (NSInteger i = orignStr.length-1; i>=0; i--) {
        NSString *tempStr = [orignStr substringWithRange:NSMakeRange(i, 1)];
        [string appendString:tempStr];
    }
    return string;
}

//字符串转链表
- (ListNode *)stringToNode:(NSString *)string{
    ListNode *node;
    for (NSInteger i = 0 ; i < string.length ; i++) {
        NSString *tempStr = [string substringWithRange:NSMakeRange(i, 1)];
        node = [ListNode addNode:node andVlaue:@([tempStr integerValue])];
    }
    return node;
}

- (ListNode *)addTwoNumbers:(ListNode *)oneNode twoNode:(ListNode *)twoNode{
    NSInteger one = [self getNodeReverseValue:oneNode];
    NSInteger two = [self getNodeReverseValue:twoNode];
    NSString *sumStr = [NSString stringWithFormat:@"%zd",one + two];
    sumStr = [self stringByReverse:sumStr];
    return  [self stringToNode:sumStr];
}

@end
