//
//  Test.m
//  ios82_oc_9
//
//  Created by ying xu on 15/8/19.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Test.h"

@implementation Test

+(instancetype)test
{
    __autoreleasing Test * t = [[Test alloc]init];
    return t;
}



//释放时的时间点
- (void)dealloc
{
    //1，取消订阅通知
    //2，取消键值观察
    NSLog(@"释放！！！");
}

@end
