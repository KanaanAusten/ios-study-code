//
//  RoomA2.m
//  DemoSDK
//
//  Created by ying xu on 15/8/13.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomA2.h"

#import "Dianbiao.h"

#import "Light.h"


@interface RoomA2 ()

@property(nonatomic,strong)Dianbiao * db;

@property(nonatomic,strong)Light * light;
@property(nonatomic,strong)NSNotificationCenter * center;

-(void)receiveNoti;

@end

@implementation RoomA2

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.db = [Dianbiao share];
        
        self.light = [[Light alloc]init];
        [self.light turnOff];
        
        self.center = [NSNotificationCenter defaultCenter];
//        [self.center addObserverForName:@"LightTurnOn" object:nil queue:nil usingBlock:^(NSNotification *note) {
//            [self.light turnOn];
//        }];
        
        [self.center addObserver:self selector:@selector(receiveNoti) name:@"LightTurnOn" object:nil];
        
        
        
    }
    return self;
}

-(void)receiveNoti
{
    [self.light turnOn];
}

@end
