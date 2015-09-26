//
//  RenderView.m
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "RenderView.h"

#import "Line.h"

@interface RenderView ()

@property(nonatomic,strong)NSArray * renderLines;


@end

@implementation RenderView

-(void)setLines:(NSArray *)lines
{
    self.renderLines = lines;
    
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    for (int i = 0; i<self.renderLines.count; i++)
    {
        Line * l = self.renderLines[i];
        
        [l.color setStroke];
        [l.path stroke];
    }
}


@end
