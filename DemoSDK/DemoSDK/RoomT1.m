//
//  RoomT1.m
//  DemoSDK
//
//  Created by ying xu on 15/8/14.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "RoomT1.h"


#import "BKButtonB.h"
#import "KongtiaoB.h"
#import "WendujiB.h"
#import "Ring.h"


@interface RoomT1 ()

@property(nonatomic,strong)BKButtonB * button;
@property(nonatomic,strong)KongtiaoB * kongtiao;
@property(nonatomic,strong)WendujiB * wdj;
@property(nonatomic,strong)Ring * ring;


@end

@implementation RoomT1

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.button = [[BKButtonB alloc]init];
        self.kongtiao = [[KongtiaoB alloc]init];
        self.wdj = [[WendujiB alloc]init];
        self.ring = [[Ring alloc]init];
        
        
        self.wdj.changeTBlockHandle = ^void
        (double  t){
            if (t>28)
            {
                [self.kongtiao zhileng];
            }
            if (t<24)
            {
                [self.kongtiao zhire];
            }
            if (t>=24 && t<=28)
            {
                [self.kongtiao stop];
            }
            
        };
        
        self.wdj.errorBlockHandle = ^void
        (NSError * error){
            [self.ring turnOn];
        };
        
        self.kongtiao.errorBlockHandle = ^void(NSError * error){
            [self.ring turnOn];
        };
        
        self.button.tapBlockHandle = ^{
            [self.ring turnOff];
        };
        
    }
    return self;
}

@end
