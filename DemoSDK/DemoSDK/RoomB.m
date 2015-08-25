//
//  RoomB.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomB.h"

#import "BKButtonD.h"
#import "Light.h"

@interface RoomB ()<BKButtonDelegate>

@property(nonatomic,strong)Light * ligth;

@property(nonatomic,strong)BKButtonD * buttonA;
@property(nonatomic,strong)BKButtonD * buttonB;

@end

@implementation RoomB

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.ligth = [[Light alloc]init];
        [self.ligth turnOn];
        
        self.buttonA = [[BKButtonD alloc]init];
        self.buttonA.delegate = self;
        
        self.buttonB = [[BKButtonD alloc]init];
        self.buttonB.delegate = self;
        
        
    }
    return self;
}


-(void)didTapButton:(BKButtonD *)button
{
    //通过调用对象的isEqualTo方法，比较两个对象指针指向的是否是一个对象内存
    if ([button isEqualTo:self.buttonA])
    {
        [self.ligth turnOn];
    }
    else
    {
        [self.ligth turnOff];
    }
}

@end
