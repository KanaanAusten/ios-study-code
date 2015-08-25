//
//  TimerD.h
//  DemoSDK
//
//  Created by 徐赢 on 15/5/8.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    TimerTypeOnce,
    TimerTypeCircle,
} TimerType;

@protocol TimerDelegate;

@interface TimerD : NSObject

@property(nonatomic,weak)id<TimerDelegate>delegate;

-(void)startWithType:(TimerType)type Duriation:(double)t;
-(void)stop;

@end

@protocol TimerDelegate <NSObject>

-(void)timerDidEnd:(TimerD *)t;

@end
