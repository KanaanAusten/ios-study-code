//
//  RoomD.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomD.h"

#import "Switch.h"
#import "Light.h"

@interface RoomD ()

@property(nonatomic,strong)Light * light;

@property(nonatomic,strong)Switch * mySwitch;
-(void)tapS;


@end

@implementation RoomD

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.light = [[Light alloc]init];
        [self.light turnOn];
        
        self.mySwitch = [[Switch alloc]init];
        [self.mySwitch addChangeStateTarget:self Action:@selector(tapS)];
    }
    return self;
}

-(void)tapS
{
    switch (self.mySwitch.currentState)
    {
        case SwitchStateOff:
            [self.light turnOff];
            break;
        case SwitchStateOn:
            [self.light turnOn];
            break;
            
        default:
            break;
    }
}

@end
