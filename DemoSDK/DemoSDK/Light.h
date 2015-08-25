//
//  Light.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    CurrentStateOff,
    CurrentStateOn,
} CurrentState;

@interface Light : NSObject

@property(readonly)CurrentState state;

-(void)turnOff;
-(void)turnOn;

@end
