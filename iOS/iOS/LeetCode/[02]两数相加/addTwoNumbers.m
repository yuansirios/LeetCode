//
//  addTwoNumbers.m
//  iOS
//
//  Created by yuan on 2019/1/28.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "addTwoNumbers.h"

@implementation addTwoNumbers

- (ListNode *)addTwoNumbers:(ListNode *)oneNode twoNode:(ListNode *)twoNode{
    NSInteger one = [self getNodeReverseValue:oneNode];
    NSInteger two = [self getNodeReverseValue:twoNode];
    NSString *sumStr = [NSString stringWithFormat:@"%zd",one + two];
    sumStr = [self stringByReverse:sumStr];
    return  [self stringToNode:sumStr];
}

//得到链表翻转数值
- (NSInteger)getNodeReverseValue:(ListNode *)node{
    ListNode *newNode = [ListNode reverseList:node];
    __block NSString *numStr = [NSString string];
    
    NSArray *valArr = [ListNode getLinkList:newNode];
    [valArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *itemStr = [NSString stringWithFormat:@"%zd",[obj integerValue]];
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

@end
