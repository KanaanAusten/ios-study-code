//
//  LineManager.m
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "LineManager.h"

@interface LineManager ()

@property(nonatomic,strong)NSMutableArray * tempLines;


@end

@implementation LineManager

+(instancetype)share
{
    static LineManager * m = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[LineManager alloc]init];
    });
    return m;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.tempLines = [NSMutableArray array];
    }
    return self;
}

-(NSArray *)lines
{
    return [NSArray arrayWithArray:self.tempLines];
}

-(void)addLineWithStartPoint:(CGPoint)point Color:(UIColor *)c Width:(double)w
{
    Line * l = [[Line alloc]init];
    l.width = w;
    l.color = c;
    [l addPoint:point];
    
    [self.tempLines addObject:l];
    
    if (self.didChangeLinesBlockHandle) {
        self.didChangeLinesBlockHandle(self.lines);
    }
    
}

-(void)addPointAtLastLine:(CGPoint)point
{
    Line * l = self.tempLines.lastObject;
    [l addPoint:point];
    
    if (self.didChangeLinesBlockHandle) {
        self.didChangeLinesBlockHandle(self.lines);
    }
}

@end
