//
//  Test+Xuying.m
//  ios82_oc_3
//
//  Created by ying xu on 15/8/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Test+Xuying.h"

@implementation Test (Xuying)

-(void)fun3
{
    _a = 7;
    
    self.c = 7;
    
    //此处，也算是，Test的伪内部
    //可以访问成员变量
    //但不可以访问，属性生成的成员变量
    NSLog(@"这里是类目的fun3");
}

@end
