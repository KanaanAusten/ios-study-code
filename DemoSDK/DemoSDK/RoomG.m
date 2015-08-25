//
//  RoomG.m
//  DemoSDK
//
//  Created by ying xu on 15/8/12.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomG.h"

#import "TimerB.h"
#import "BKButtonB.h"
#import "Light.h"

@interface RoomG ()
{
    BOOL _isRun;
}


@property(nonatomic,strong)TimerB * timer;
@property(nonatomic,strong)BKButtonB * button;
@property(nonatomic,strong)Light * light;


@end

@implementation RoomG

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _isRun = NO;
        
        self.light = [[Light alloc]init];
        [self.light turnOff];
        
        self.timer = [[TimerB alloc]init];
        [self.timer stop];
        
        self.button = [[BKButtonB alloc]init];
        
        
        self.button.tapBlockHandle = ^(){
          
            if (_isRun == NO)
            {
                [self.timer startWithType:TimerTypeCircle Duriation:1];
                _isRun = YES;
            }
            else
            {
                [self.timer stop];
                [self.light turnOff];
                _isRun = NO;
            }
            
            
        };
        
        self.timer.endTimeBlockHandle = ^(){
        
            switch (self.light.state)
            {
                case CurrentStateOff:
                    [self.light turnOn];
                    break;
                case CurrentStateOn:
                    [self.light turnOff];
                    break;
                default:
                    break;
            }
            
        };
        
        
    }
    return self;
}

@end
