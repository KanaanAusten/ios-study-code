//
//  TriangleA.m
//  TriangleA&B
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "TriangleA.h"

@implementation TriangleA

-(BOOL)isTriangle
{
    [self addObserver:<#(NSObject *)#> forKeyPath:<#(NSString *)#> options:<#(NSKeyValueObservingOptions)#> context:<#(void *)#>]
    if (_a+_b > _c && _a+_c>_b && _b+_c>_a)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    
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

@end
