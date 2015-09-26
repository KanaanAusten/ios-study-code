//
//  TouchView.m
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if (self.touchBegin)
    {
        self.touchBegin(p);
    }
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if (self.touchMove)
    {
        self.touchMove(p);
    }
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if (self.touchEnd)
    {
        self.touchEnd(p);
    }
}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch * touch = [touches anyObject];
    CGPoint p = [touch locationInView:self];
    if (self.touchEnd)
    {
        self.touchEnd(p);
    }
}

@end
