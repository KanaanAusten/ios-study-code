//
//  SwitchD.h
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

@protocol  SwitchDelegate;

@interface SwitchD : NSObject



@property(nonatomic,assign,readonly)SwitchState currentState;

@property(nonatomic,weak)id<SwitchDelegate>delegate;

@end

@protocol  SwitchDelegate <NSObject>

-(void)switchD:(SwitchD *)s didChangeState:(SwitchState)currentState;

@end
