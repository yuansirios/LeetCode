<?php

/*
 * 搜索插入位置
 * 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。

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
class Solution {

    /**
     * @param Integer[] $nums
     * @param Integer $target
     * @return Integer
     */
    function searchInsert($nums, $target) {
        $res = 0;

        if ($target <= $nums[0]) {
            return $res;
        }

        if ($target > $nums[count($nums) - 1]) {
            return count($nums);
        }

        for ($i = 0; $i < count($nums); $i++) {
            $item = $nums[$i];
            if ($item >= $target) {
                return $i;
            }
        }
        return $res;
    }
}

$instance = new Solution();
$res = $instance -> searchInsert([1,3,5,6],5);

echo '搜索插入位置 测试用例<pre>';

var_dump($res);

$res = $instance -> searchInsert([1,3,5,6],2);
var_dump($res);

$res = $instance -> searchInsert([1,3,5,6],7);
var_dump($res);

$res = $instance -> searchInsert([1,3,5,6],0);
var_dump($res);
