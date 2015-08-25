//
//  RoomE.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomE.h"

#import "SwitchD.h"
#import "Light.h"



@interface RoomE ()<SwitchDelegate>

@property(nonatomic,strong)Light * light;

@property(nonatomic,strong)SwitchD * mySwitch;



@end

@implementation RoomE

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.light = [[Light alloc]init];
        
        self.mySwitch = [[SwitchD alloc]init];
        self.mySwitch.delegate = self;
        
    }
    return self;
}


-(void)switchD:(SwitchD *)s didChangeState:(SwitchState)currentState
{
    switch (currentState)
    {
        case SwitchStateOn:
            [self.light turnOn];
            break;
        case SwitchStateOff:
            [self.light turnOff];
            break;
            
        default:
            break;
    }
}

@end
