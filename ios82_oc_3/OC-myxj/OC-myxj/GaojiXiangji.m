//
//  GaojiXiangji.m
//  OC-myxj
//
//  Created by 徐赢 on 14/12/23.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "GaojiXiangji.h"

@interface GaojiXiangji ()

@property(nonatomic,strong)MeiYan * meiyan;

@end

@implementation GaojiXiangji





- (instancetype)init
{
    self = [super init];
    if (self) {
        self.meiyan = [[MeiYan alloc]init];
    }
    return self;
}


-(void)takePhoto
{
    [super takePhoto];
    [self.meiyan meiyan];
}



@end
