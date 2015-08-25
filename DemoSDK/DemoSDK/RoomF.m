//
//  RoomF.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomF.h"

#import "SwitchB.h"
#import "Light.h"

@interface RoomF ()

@property(nonatomic,strong)Light * light;
@property(nonatomic,strong)SwitchB * mySwitch;

@end

@implementation RoomF

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.light = [[Light alloc]init];
        
        self.mySwitch = [[SwitchB alloc]init];
        
        self.mySwitch.changeStateBlockHandle = ^(SwitchState state){
            switch (state)
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
        };
        
        
    }
    return self;
}



@end
