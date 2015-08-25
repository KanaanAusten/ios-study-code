//
//  Light.m
//  ios82_oc_6
//
//  Created by ying xu on 15/8/11.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Light.h"

@implementation Light

-(void)turnOff
{
    self.backgroundColor = [UIColor blackColor];
}
-(void)turnOn
{
    self.backgroundColor = [UIColor whiteColor];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
