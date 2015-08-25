//
//  TimerB.h
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

typedef void(^TB)(void);

@interface TimerB : NSObject

@property(nonatomic,strong)TB endTimeBlockHandle;

-(void)startWithType:(TimerType)type Duriation:(double)t;
-(void)stop;



@end
