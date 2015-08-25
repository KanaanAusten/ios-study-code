//
//  Wenduji.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum : NSUInteger {
    WDJEventChangeTemperature,
    WDJEventError,
} WDJEvent;


@interface Wenduji : NSObject

@property(readonly) double currentT;

-(void)addTarget:(id)target Action:(SEL)action ForWDJEvent:(WDJEvent)event;

-(void)start;
-(void)stop;

@end


