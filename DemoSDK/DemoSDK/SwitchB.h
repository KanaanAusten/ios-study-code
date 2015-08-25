//
//  SwitchB.h
//  DemoSDK
//
//  Created by 徐赢 on 15/1/4.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    SwitchStateOff,//default
    SwitchStateOn,
} SwitchState;


typedef void(^SBlockType)(SwitchState state);

@interface SwitchB : NSObject

@property(nonatomic,assign,readonly)SwitchState currentState;

@property(nonatomic,strong)SBlockType changeStateBlockHandle;

@end
