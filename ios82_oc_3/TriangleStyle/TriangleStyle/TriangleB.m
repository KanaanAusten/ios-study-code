//
//  TriangleB.m
//  TriangleStyle
//
//  Created by 徐赢 on 14/12/22.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "TriangleB.h"

@implementation TriangleB

-(double)zhouchang
{
    if ([self isTriangle])
    {
        return self.a+self.b+self.c;
    }
    return -1;
}

@end
