//
//  TestV.m
//  ios82_app_8_1
//
//  Created by ying xu on 15/9/24.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TestV.h"

@interface TestV ()

@property(nonatomic,strong)Line * tl;

@end

@implementation TestV

-(void)setLine:(Line *)line
{
    self.tl = line;
    
    [self setNeedsDisplay];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    /*
    CGPoint p1 = CGPointMake(20, 20);
    CGPoint p2 = CGPointMake(50, 50);
    
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path setLineWidth:2];
    
    [path moveToPoint:p1];
    [path addLineToPoint:p2];
    
    UIColor * red = [UIColor redColor];
    [red setStroke];
    */
    
    //画
    [self.tl.path stroke];
    
    
    
    
}


@end
