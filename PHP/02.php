<?php
/*
 02 - 两数相加
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

class ListNode {
         public $val = 0;
         public $next = null;
         function __construct($val) {
              $this->val = $val; 
         }

        /**
         * 创建链表
         */
        public static function addNode($node,$value){
            if ($node === null){
                $node = new ListNode($value);
                $node->val = $value;
                $node->next = null;
            }else{
                $node->next = ListNode::addNode($node->next,$value);
            }
            return $node;
        }

        /**
         * 链表反转
         */
        public static function reverseList($head){
            $tempHead = $head;
            $next = null;
            $pre = null;
            while ($tempHead){
                if ($tempHead == $head){
                    $next = $tempHead->next;
                    $tempHead->next = null;
                    $pre = $tempHead;
                }else{
                    $next = $tempHead->next;
                    $tempHead->next = $pre;
                    $pre = $tempHead;
                }
                $tempHead = $next;
            }
            return $pre;
        }

        //获取链表 
        public static function getLinkList($head) { 
            $current = $head;
            if ($current->next == null) { 
                echo ("链表为空!"); 
                return; 
            } 

            $valArr = array();
            array_push($valArr,$current->val );
            
            while ( $current->next != null ) { 
                array_push($valArr,$current->next->val );
                if ($current->next->next == null) { 
                    return $valArr;
                    break; 
                } 
                $current = $current->next; 
            } 
        }
}

class Solution {
    function addTwoNumbers($l1, $l2) {
        //1、得到链表翻转后的数值
        $sum = $this->getNodeReverseValue($l1);
        $sum2 = $this->getNodeReverseValue($l2);
        $sum3 = $sum + $sum2;

        //2、反转字符串转链表
        $sum3 = strrev($sum3);

        //3、分割字符串，转链表
        $charArr = str_split($sum3);
        var_dump($charArr);

        foreach ($charArr as $char){
            $node = ListNode::addNode($node,$char);
        }
        return $node;
    }

    //得到链表翻转数值
    function getNodeReverseValue($node){
        $node = ListNode::reverseList($node);
        $valueArr = ListNode::getLinkList($node);
        foreach ($valueArr as $val){
            $sum = $sum . $val;
        }
        return $sum;
    }

}

//1、创建两链表
$node = ListNode::addNode($node,2);
$node = ListNode::addNode($node,4);
$node = ListNode::addNode($node,3);

$node2 = ListNode::addNode($node2,5);
$node2 = ListNode::addNode($node2,6);
$node2 = ListNode::addNode($node2,4);

$instance = new Solution();
$result = $instance->addTwoNumbers($node,$node2);
var_dump($result);

