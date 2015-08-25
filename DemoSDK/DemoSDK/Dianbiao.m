//
//  Dianbiao.m
//  DemoSDK
//
//  Created by ying xu on 15/8/13.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "Dianbiao.h"

@implementation Dianbiao

+(instancetype)share
{
    static Dianbiao * db = nil;
    
    //保证，大括号中的代码，只运行一次
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        db = [[Dianbiao alloc]init];
    });
    return db;
    
}

@end
