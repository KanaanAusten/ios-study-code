//
//  Line.m
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Line.h"

@interface Line ()

@property(nonatomic,strong)NSMutableArray * tempPoints;

@end

@implementation Line

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.tempPoints = [NSMutableArray array];
        
    }
    return self;
}

-(void)addPoint:(CGPoint)point
{
    NSValue * v = [NSValue valueWithCGPoint:point];
    [self.tempPoints addObject:v];
}


-(NSArray *)points
{
    return [NSArray arrayWithArray:self.tempPoints];
}

-(UIBezierPath *)path
{
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path setLineWidth:self.width];
    
    [path moveToPoint:[self.tempPoints[0] CGPointValue]];
    
    for (int i = 1; i < self.tempPoints.count;i++)
    {
        [path addLineToPoint:[self.tempPoints[i] CGPointValue]];
    }
    
    return path;
}


@end
