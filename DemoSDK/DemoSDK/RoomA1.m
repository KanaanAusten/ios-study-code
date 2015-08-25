//
//  RoomA1.m
//  DemoSDK
//
//  Created by ying xu on 15/8/13.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomA1.h"

#import "Dianbiao.h"

#import "BKButtonB.h"

@interface RoomA1 ()

@property(nonatomic,strong)Dianbiao *db;

@property(nonatomic,strong)BKButtonB * button;
@property(nonatomic,strong)NSNotificationCenter * center;

@end

@implementation RoomA1

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.db = [Dianbiao share];
        
        self.center = [NSNotificationCenter defaultCenter];
        
        self.button = [[BKButtonB alloc]init];
        
        self.button.tapBlockHandle = ^{
            
            /*
            NSNotification * noti = [NSNotification notificationWithName:@"LightTurnOn" object:self];
            
            [self.center postNotification:noti];
            */
            
            [self.center postNotificationName:@"LightTurnOn" object:self];
            
        };
        
        
        
    }
    return self;
}

@end
