//
//  TriangleB.m
//  TriangleA&B
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "TriangleB.h"

@implementation TriangleB

-(BOOL)isTriangle
{
    
    if (_a+_b > _c && _a+_c>_b && _b+_c>_a)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(double)area
{
    if ([self isTriangle])
    {
        double s=(_a+_b+_c)/2;
        return sqrt(s*(s-_a)*(s-_b)*(s-_c));
    }
    else
    {
        return -1;
    }
}

-(double)zhouchang
{
    if ([self isTriangle])
    {
        return _a+_b+_c;
    }
    else
    {
        return -1;
    }
}

@end
