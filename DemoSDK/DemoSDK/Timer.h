//
//  Timer.h
//  OC6-1
//
//  Created by 徐赢 on 15/5/7.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    TimerTypeOnce,
    TimerTypeCircle,
} TimerType;

@interface Timer : NSObject

-(void)startWithType:(TimerType)type Duriation:(double)t;
-(void)stop;


-(void)addTarget:(id)target Action:(SEL)action;


@end
