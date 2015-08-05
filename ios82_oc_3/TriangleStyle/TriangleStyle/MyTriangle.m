//
//  MyTriangle.m
//  TriangleStyle
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "MyTriangle.h"

@implementation MyTriangle

-(double)area
{
    double s = [super area];
    if (s>100)
    {
        _style = TriangleStyleBig;
    }
    else if (s>10)
    {
        self.style = TriangleStyleNomal;
    }
    else if (s>0)
    {
        self.style = TriangleStyleSmall;
    }
    else
    {
        self.style = TriangleStyleError;
    }
    
    return s;
}

@end
