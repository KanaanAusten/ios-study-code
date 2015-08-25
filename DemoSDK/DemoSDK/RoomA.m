//
//  RoomA.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomA.h"

#import "Light.h"
#import "BKButton.h"

@interface RoomA ()

@property(nonatomic,strong)Light * light;
@property(nonatomic,strong)BKButton * buttonA;
-(void)tapA;

@property(nonatomic,strong)BKButton * buttonB;
-(void)tapB;

@end

@implementation RoomA

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.light = [[Light alloc]init];
        [self.light turnOn];
        
        self.buttonA = [[BKButton alloc]init];
        [self.buttonA addTapTarget:self Action:@selector(tapA)];
        
        self.buttonB = [[BKButton alloc]init];
        [self.buttonB addTapTarget:self Action:@selector(tapB)];
        
    }
    return self;
}

-(void)tapA
{
    [self.light turnOn];
}

-(void)tapB
{
    [self.light turnOff];
}

@end
