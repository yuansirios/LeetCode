<?php

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

        foreach ($l1 as $val){
            $node = ListNode::addNode($node,$val);
        }

        foreach ($l2 as $val){
            $node2 = ListNode::addNode($node2,$val);
        } 

        //1、得到链表翻转后的数值
        $sum = $this->getNodeReverseValue($node);
        $sum2 = $this->getNodeReverseValue($node2);
        $sum3 = $sum + $sum2;

        //2、反转字符串转链表
        $sum3 = strrev($sum3);

        //3、分割字符串，转链表
        $charArr = str_split($sum3);

        foreach ($charArr as $char){
            $node3 = ListNode::addNode($node3,$char);
        }

        $valueArr = ListNode::getLinkList($node3);
        
        return $valueArr;
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

$instance = new Solution();
$result = $instance->addTwoNumbers([2,4,3],[5,6,4]);
var_dump($result);