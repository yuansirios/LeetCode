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
#import "Solution06.h"
#import "Solution07.h"
#import "Solution08.h"
#import "Solution09.h"
#import "Solution10.h"
#import "Solution11.h"

#define TICK CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();

#define TOCK NSLog(@"Time: %f", CFAbsoluteTimeGetCurrent() - start);

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

#pragma mark - *********** 06-最长公共前缀 ***********

- (void)test06{
    Solution06 *sol = Solution06.new;
    NSString *value = [sol LongestCommonPrefix:@[@"111",@"112",@"115"]];
    NSLog(@"结果：%@",value);
}

#pragma mark - *********** 07-搜索插入位置 ***********

- (void)test07{
    Solution07 *sol = Solution07.new;
    int res = [sol searchInsert:@[@1,@3,@5,@6] target:2];
    NSLog(@"结果：%d",res);
}

#pragma mark - *********** 08-数组有 N 个元素，求连续子数组的最大和 ***********

- (void)test08{
    Solution08 *sol = Solution08.new;
    NSArray *arr = @[@(-1),@2,@1];
    int res = [sol calMaxSumOfArray3:arr];
    NSLog(@"连续子数组的最大和: %d",res);
}

#pragma mark - *********** 09-N个台阶，一次可以走一步或者两步，求走这N个台阶有多少种走法 ***********

- (void)test09{
    Solution09 *sol = Solution09.new;
    NSLog(@"共有 %d 种方法",[sol getNValue:3]);
}

#pragma mark - *********** 10-N对括号的所有的有效组合 ***********

- (void)test10{
    Solution10 *sol = Solution10.new;
    NSLog(@"N对括号的所有的有效组合:%@",[sol getAllKH:3]);
}

#pragma mark - *********** 11-不用三方变量，交换值 ***********

- (void)test11{
    Solution11 *sol = Solution11.new;
    [sol swap:10 b:20];
    [sol swap1:10 b:20];
    [sol swap2:10 b:20];
    [sol swap3:10 b:20];
}

@end
