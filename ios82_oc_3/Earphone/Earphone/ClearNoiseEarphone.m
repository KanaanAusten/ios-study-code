//
//  ClearNoiseEarphone.m
//  Earphone
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "ClearNoiseEarphone.h"

@implementation ClearNoiseEarphone

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.clearN = [[ClearNoise alloc]init];
    }
    return self;
}

-(void)startPlay
{
    [super startPlay];
    [self.clearN clearNoise];
}

@end
