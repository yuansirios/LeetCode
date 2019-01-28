//
//  iOSTests.m
//  iOSTests
//
//  Created by yuan on 2019/1/25.
//  Copyright © 2019 yuan. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "Solution.h"
#import "ListNode.h"
#import "addTwoNumbers.h"
#import "Solution03.h"
#import "Solution04.h"
#import "Solution05.h"
#import "Solution06.h"

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

- (void)test01{
    NSArray *nums = @[@(1),@(2),@(7),@(8),@(11),@(15)];
    int target = 9;
    
    NSArray *result = [[Solution new] twoSum:nums target:target];
    NSLog(@"%@",result);
}


#pragma mark - *********** 02-两数相加 ***********

- (void)test02{
    ListNode *node;
    node = [ListNode addNode:node andVlaue:@(2)];
    node = [ListNode addNode:node andVlaue:@(4)];
    node = [ListNode addNode:node andVlaue:@(3)];
    
    ListNode *node2;
    node2 = [ListNode addNode:node2 andVlaue:@(5)];
    node2 = [ListNode addNode:node2 andVlaue:@(6)];
    node2 = [ListNode addNode:node2 andVlaue:@(4)];
    
    ListNode *sumNode = [[addTwoNumbers new] addTwoNumbers:node twoNode:node2];
    NSArray *valArr = [ListNode getLinkList:sumNode];
    NSLog(@"%@",valArr);
}

#pragma mark - *********** 03-整数反转 ***********

- (void)test03{
    Solution03 *sol = Solution03.new;
    NSLog(@"整数反转：%d",[sol reverse:-120]);
}

#pragma mark - *********** 04-判断回文 ***********

- (void)test04{
    Solution04 *sol = Solution04.new;
    NSLog(@"是否回文：%@",[sol isPalindrome:120]?@"YES":@"NO");
    NSLog(@"是否回文：%@",[sol isPalindrome:12321]?@"YES":@"NO");
}

#pragma mark - *********** 05-罗马字符转数字 ***********

- (void)test05{
    Solution05 *sol = Solution05.new;
    NSInteger value = [sol RomanToInt:@"IV"];
    NSLog(@"结果：%zd",value);
}

#pragma mark - *********** 06-最长公共前缀 ***********

- (void)test06{
    Solution06 *sol = Solution06.new;
    NSString *value = [sol LongestCommonPrefix:@[@"111",@"112",@"115"]];
    NSLog(@"结果：%@",value);
}

@end
