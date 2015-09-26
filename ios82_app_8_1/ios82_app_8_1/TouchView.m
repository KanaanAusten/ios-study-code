//
//  TouchView.m
//  ios82_app_8_1
//
//  Created by ying xu on 15/9/24.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TouchView.h"


@implementation TouchView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
   // NSLog(@"1111");
    
    UITouch * touch = [touches anyObject];
    
    CGPoint p = [touch locationInView:self];
    
    self.b(p);
    
    NSLog(@"%@",NSStringFromCGPoint(p));
    
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    
    CGPoint p = [touch locationInView:self];
    self.b(p);
    NSLog(@"%@",NSStringFromCGPoint(p));
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    
    CGPoint p = [touch locationInView:self];
    self.b(p);
    NSLog(@"%@",NSStringFromCGPoint(p));
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

@end
