//
//  Solution06.m
//  iOS
//
//  Created by yuan on 2019/1/28.
//  Copyright © 2019 yuan. All rights reserved.
//

#import "Solution06.h"

@implementation Solution06

- (NSString *)LongestCommonPrefix:(NSArray *)array{
    
    NSString *temp = [NSString string];
    
    //定义一个能够被Block捕获的可修改值的变量
    __block NSUInteger maxStr = 0;
    
    //定义一个可变的数组用来存储公共字符串
    NSMutableArray  *stringArray = [NSMutableArray array];
    
    //取出数组中第一个字符串元素进行截取,并与第二个字符串元素作包含关系判断
    
    //此循环控制对字符串循环的次数
    for (int i=0; i<=[array[0] length]; i++) {
        //此循环是控制截取的子字符串个数
        for (int j=0; j<[array[0] length]-i; j++) {
            //是包含关系的字符串 添加到 可变数组中
            temp = [array[0] substringWithRange:NSMakeRange(j, i+1)];
            if ([array[1] containsString:temp]) {
                [stringArray addObject:temp];
            }
        }
    }
    
    if(stringArray.count != 0){
        //判断array中剩余的字符串元素与stringArray的包含关系
        for (int n=2; n<array.count; n++) {
            //判断字符串元素是否包含公共字符串数组stringArray中的字符串元素
            for (int k=0; k<[stringArray count]; k++) {
                if (![array[n] containsString:stringArray[k]]) {
                    //特别注意:当移除一个stringArray中的元素时,后面的元素会集体向前移动一位,并且[stringArray count]会减1.
                    [stringArray removeObjectAtIndex:k];
                    //此时k--是用来抵消for循环中的k++,让k值不进行变化
                    k--;
                }
            }
        }
        
        //遍历可变数组stringArray,寻找其中最大的字符串元素,获得其下标值
        [stringArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            if([[stringArray firstObject] length] < [[stringArray objectAtIndex:idx] length]){
                maxStr = idx;
            }
        }];
    }else{
        return nil;
    }
    
    //返回最大的公共字符串
    if (stringArray.count != 0) {
        //上面对stringArray进行了元素的移除操作,故在此要进行重复判断
        return [stringArray objectAtIndex:maxStr];
    }else{
        return nil;
    }
}

@end
