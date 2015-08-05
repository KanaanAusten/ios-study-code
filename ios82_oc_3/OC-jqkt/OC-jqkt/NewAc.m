//
//  NewAc.m
//  OC-jqkt
//
//  Created by 徐赢 on 14/12/23.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "NewAc.h"

#import "ChuJiaQuan.h"

@interface NewAc ()

@property(nonatomic,strong)ChuJiaQuan * cJQ;

@end

@implementation NewAc

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cJQ = [[ChuJiaQuan alloc]init];
    }
    return self;
}

-(void)zhileng
{
    [super zhileng];
    [self.cJQ chuJQ];
}



@end
