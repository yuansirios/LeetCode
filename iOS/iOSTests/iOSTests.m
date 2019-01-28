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
    NSLog(@"整数反转：%d",[sol reverse2:-120]);
}



@end
