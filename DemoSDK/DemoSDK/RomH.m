//
//  RomH.m
//  DemoSDK
//
//  Created by ying xu on 15/8/13.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RomH.h"
#import "BKButton.h"
#import "Light.h"
#import "Timer.h"

@interface RomH ()
{
    BOOL _isrun;
}
@property(nonatomic,strong) Timer *time;
@property(nonatomic,strong) Light *light;
@property(nonatomic,strong) BKButton *button;
-(void)tapA;
-(void)tapB;

@end

@implementation RomH

- (instancetype)init
{
    self = [super init];
    if (self) {
        _isrun = YES;
        self.light = [[Light alloc]init];
        [self.light turnOff];
        self.button = [[BKButton alloc]init];
        self.time = [[Timer alloc]init];
        [self.time addTarget:self Action:@selector(tapA)];
        [self.button addTapTarget:self Action:@selector(tapB)];
    }
    return self;
}

-(void)tapB{
    if (_isrun==YES) {
        [self.light turnOff];
        [self.time stop];
        _isrun = NO;
    }else{
        [self.time startWithType:TimerTypeCircle Duriation:1];
        _isrun=YES;
    }
}

-(void)tapA{
    switch (self.light.state) {
        case CurrentStateOff:
            [self.light turnOn];
            break;
        case CurrentStateOn:
            [self.light turnOff];
            break;
        default:
            break;
    }
}
@end
