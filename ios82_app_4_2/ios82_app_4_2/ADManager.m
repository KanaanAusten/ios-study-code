//
//  ADManager.m
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ADManager.h"

@implementation ADManager

+(instancetype)share
{
    static ADManager * m = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[ADManager alloc]init];
    });
    return m;
}
-(BOOL)isHasAD
{
    if (arc4random()%2 == 0)
    {
        return NO;
    }
    else
    {
        return YES;
    }
    
}

-(UIImage *)adImage
{
    return [UIImage imageNamed:@"1"];
}

@end
