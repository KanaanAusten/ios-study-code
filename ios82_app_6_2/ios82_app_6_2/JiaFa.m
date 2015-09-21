//
//  JiaFa.m
//  ios82_app_6_2
//
//  Created by ying xu on 15/9/15.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "JiaFa.h"

@implementation JiaFa

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.b = ^double(int x,int y){
            return x+y;
        };
    }
    return self;
}

@end
