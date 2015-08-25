//
//  RoomC.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomC.h"

#import "BKButtonB.h"
#import "Light.h"

@interface RoomC ()

@property(nonatomic,strong)Light * light;
@property(nonatomic,strong)BKButtonB * buttonA;
@property(nonatomic,strong)BKButtonB * buttonB;

@end

@implementation RoomC

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.light = [[Light alloc]init];
        [self.light turnOn];
        self.buttonA = [[BKButtonB alloc]init];
        
        self.buttonA.tapBlockHandle =^(){
            [self.light turnOn];
        };
        
        
        self.buttonB = [[BKButtonB alloc]init];
        self.buttonB.tapBlockHandle = ^(){
            [self.light turnOff];
        };
        
    }
    return self;
}

@end
