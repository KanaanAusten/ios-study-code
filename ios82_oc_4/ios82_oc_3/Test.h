//
//  Test.h
//  ios82_oc_3
//
//  Created by ying xu on 15/8/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TestProtocol.h"

@interface Test : NSObject<TestProtocol>
{
    int _a;
    int _d;
}

@property(readonly) int b;

@property int c;

-(void)fun1;

-(void)fun2;

@end
