//
//  ListNode.m
//  iOSTests
//
//  Created by yuan on 2019/1/25.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "ListNode.h"

@interface ListNode(){
    id val;
    ListNode *next;
}

@end

@implementation ListNode


+ (ListNode *)addNode:(ListNode *)p andVlaue:(id)value
{
    if (p == nil) {
        p = [[ListNode alloc]init];
        p->val = value;
        p->next = nil;
    }else{
        p->next = [ListNode addNode:p->next andVlaue:value];
    }
    
    return p;
}

+ (void)traveraslList:(ListNode *)head resultBlock:(void (^)(NSInteger))block
{
    if (head->next == nil) {
        if (block) {
            block([head->val integerValue]);
        }
        return;
    }
    if (block) {
        block([head->val integerValue]);
    }
    [ListNode traveraslList:head->next resultBlock:block];
}

+ (ListNode *)reverseList:(ListNode *)head{
    ListNode *tempHead = head;
    ListNode *next = NULL;
    ListNode *pre = NULL;
    while (tempHead) {
        if (tempHead == head) {
            next = tempHead->next;
            tempHead ->next = NULL;
            pre = tempHead;
        } else {
            next = tempHead->next;
            tempHead -> next = pre;
            pre = tempHead;
        }
        tempHead = next;
    }
    return pre;
}

+ (void)reverseList2:(ListNode *)head
{
    ListNode *p = head;
    ListNode *s = p->next;
    
    while (s->next != nil) {
        ListNode *t = s->next;
        s->next = p;
        p = s;
        s = t;
    }
    s->next = p;
    head->next->next = nil; //尾指针置为空
    head->next = s; //赋值到头指针最后一位
}

+ (ListNode *)reverse:(ListNode *)node
{
    ListNode *current,*pnext,*prev;
    if (!node) return nil;
    if (!node->next) return node;
    current = node;
    pnext = current->next;
    current->next = nil;
    while (pnext) {
        prev = pnext->next;
        pnext->next = current;
        pnext = prev;
    }
    node =  current;
    
    return node;
}

@end
