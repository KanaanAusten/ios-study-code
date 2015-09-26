//
//  Line.m
//  ios82_app_8_1
//
//  Created by ying xu on 15/9/24.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Line.h"

@interface Line ()

@property(nonatomic,strong)NSMutableArray * ps;

@end

@implementation Line

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.ps = [NSMutableArray array];
        
        self.color = [UIColor redColor];
        self.width = 1;
    }
    return self;
}

-(void)addLinePoint:(CGPoint)point
{
    NSValue * v = [NSValue valueWithCGPoint:point];
    [self.ps addObject:v];
}

-(NSArray *)points
{
    return [NSArray arrayWithArray:self.ps];
}

-(UIBezierPath *)path
{
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path moveToPoint:[self.ps[0] CGPointValue]];
    for (int i = 1; i<self.ps.count; i++)
    {
        [path addLineToPoint:[self.ps[i] CGPointValue]];
    }
    
    return path;
}



@end
