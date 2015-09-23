//
//  PINKeyBoard.m
//  ios82_app_7_1
//
//  Created by ying xu on 15/9/22.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "PINKeyBoard.h"

@interface PINKeyBoard ()

@property(nonatomic,strong)NSMutableArray * pins;

@end

@implementation PINKeyBoard

-(void)awakeFromNib
{
    self.pins = [NSMutableArray array];
}

- (IBAction)tapCount:(UIButton *)sender
{
    [self.pins addObject:sender.currentTitle];
    
}

- (IBAction)tuige:(id)sender
{
    [self.pins removeLastObject];
}

- (IBAction)qingchu:(id)sender
{
    [self.pins removeAllObjects];
}

- (IBAction)finish:(id)sender
{
   // [self.target performSelector:self.action withObject:self];
    
    
    if([self.delegate respondsToSelector:@selector(pinKeyBoard:didFinishPassword:)])
    {
        [self.delegate pinKeyBoard:self didFinishPassword:self.password];
    }
    
    
    
}

-(NSString *)password
{
    NSMutableString * str = [NSMutableString string];
    for (int i = 0; i<self.pins.count; i++)
    {
        [str appendString:self.pins[i]];
    }
    
    return [NSString stringWithString:str];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
