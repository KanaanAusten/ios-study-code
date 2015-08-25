//
//  RoomTA.m
//  DemoSDK
//
//  Created by ying xu on 15/8/14.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomTA.h"

#import "Light.h"

typedef enum : NSUInteger {
    LightTypeA,
    LightTypeB,
    LightTypeC,
    LightTypeD,
    LightTypeUnknow,
} LightType;

@interface RoomTA ()
{
    BOOL _isSwitchA;
    BOOL _isSwitchB;
}

@property(nonatomic,strong)Light * lightA;
@property(nonatomic,strong)Light * lightB;
@property(nonatomic,strong)Light * lightC;
@property(nonatomic,strong)Light * lightD;

@property(nonatomic,strong)NSNotificationCenter * center;

//根据成员变量的值，计算开灯的情况
-(LightType)lightType;

-(void)doLight:(LightType)type;

@end

@implementation RoomTA

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _isSwitchA = NO;
        _isSwitchA = NO;
        
        self.lightA = [[Light alloc]init];
        [self.lightA turnOn];
        
        self.lightB = [[Light alloc]init];
        [self.lightB turnOff];
        
        self.lightC = [[Light alloc]init];
        [self.lightC turnOff];
        
        self.lightD = [[Light alloc]init];
        [self.lightD turnOff];
        
        
        self.center = [NSNotificationCenter defaultCenter];
        
        [self.center addObserverForName:@"SwitchATurnOn" object:nil queue:nil usingBlock:^(NSNotification *note) {
            _isSwitchA = YES;
            //LightType type = [self lightType];
            [self doLight:self.lightType];
        }];
        
        [self.center addObserverForName:@"SwitchATurnOff" object:nil queue:nil usingBlock:^(NSNotification *note) {
            _isSwitchA = NO;
            [self doLight:self.lightType];
        }];
        
        [self.center addObserverForName:@"SwitchBTurnOn" object:nil queue:nil usingBlock:^(NSNotification *note) {
            _isSwitchB = YES;
            [self doLight:self.lightType];
        }];
        [self.center addObserverForName:@"SwitchBTurnOff" object:nil queue:nil usingBlock:^(NSNotification *note) {
            _isSwitchB = NO;
            [self doLight:self.lightType];
        }];
        
        
        
    }
    return self;
}


-(LightType)lightType
{
    if (_isSwitchA == YES && _isSwitchB == YES)
    {
        return LightTypeD;
    }
    if (_isSwitchA == NO && _isSwitchB == NO)
    {
        return LightTypeA;
    }
    if (_isSwitchA == YES && _isSwitchB == NO)
    {
        return LightTypeB;
    }
    if (_isSwitchA == NO && _isSwitchB == YES)
    {
        return LightTypeC;
    }
    
    return LightTypeUnknow;
    
}

-(void)doLight:(LightType)type
{
    switch (type)
    {
        case LightTypeA:
        {
            [self.lightA turnOn];
            [self.lightB turnOff];
            [self.lightC turnOff];
            [self.lightD turnOff];
        }
            break;
        case LightTypeB:
        {
            [self.lightA turnOff];
            [self.lightB turnOn];
            [self.lightC turnOff];
            [self.lightD turnOff];
        }
            break;
        case LightTypeC:
        {
            [self.lightA turnOff];
            [self.lightB turnOff];
            [self.lightC turnOn];
            [self.lightD turnOff];
        }
            break;
        case LightTypeD:
        {
            [self.lightA turnOff];
            [self.lightB turnOff];
            [self.lightC turnOff];
            [self.lightD turnOn];
        }
            break;
        default:
            break;
    }
}
@end
