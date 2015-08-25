//
//  RoomTB.m
//  DemoSDK
//
//  Created by ying xu on 15/8/14.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomTB.h"

#import "SwitchB.h"

@interface RoomTB ()

@property(nonatomic,strong)SwitchB * switchA;
@property(nonatomic,strong)SwitchB * switchB;

@property(nonatomic,strong)NSNotificationCenter * center;


@end

@implementation RoomTB

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.switchA = [[SwitchB alloc]init];
        self.switchB = [[SwitchB alloc]init];
        self.center = [NSNotificationCenter defaultCenter];
        
        self.switchA.changeStateBlockHandle = ^void(SwitchState state){
            if (state == SwitchStateOn)
            {
                [self.center postNotificationName:@"SwitchATurnOn" object:nil];
            }
            else
            {
                [self.center postNotificationName:@"SwitchATurnOff" object:nil];
            }
        };
        
        self.switchB.changeStateBlockHandle =^void(SwitchState state){
            if (state == SwitchStateOn)
            {
                [self.center postNotificationName:@"SwitchBTurnOn" object:nil];
            }
            else
            {
                [self.center postNotificationName:@"SwitchBTurnOff" object:nil];
            }
        };
    }
    return self;
}

@end
