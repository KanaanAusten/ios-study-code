//
//  Switch.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    SwitchStateOff,//default
    SwitchStateOn,
} SwitchState;



@interface Switch : NSObject

@property(nonatomic,assign,readonly)SwitchState currentState;

-(void)addChangeStateTarget:(id)target Action:(SEL)action;



@end
