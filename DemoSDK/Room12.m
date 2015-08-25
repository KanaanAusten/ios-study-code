//
//  Room12.m
//  DemoSDK
//
//  Created by ying xu on 15/8/14.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import "Room12.h"
#import "Wenduji.h"
#import "BKButton.h"
#import "Ring.h"
#import "Kongtiao.h"
@interface Room12 ()
@property(nonatomic,strong)Wenduji * wj;
-(void)tap;
@property(nonatomic,strong)BKButton * button;
-(void)tapB;
@property(nonatomic,strong)Ring *ring;
@property(nonatomic,strong)Kongtiao *kongtiao;
-(void)tapA;

@end

@implementation Room12

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.button = [[BKButton alloc]init];
        [self.button addTapTarget:self Action:@selector(tapB)];
        self.wj = [[Wenduji alloc]init];
        [self.wj addTarget:self Action:@selector(tap) ForWDJEvent:WDJEventChangeTemperature];
        [self.wj addTarget:self Action:@selector(tapA) ForWDJEvent:WDJEventError];
        self.kongtiao = [[Kongtiao alloc]init];
        self.ring = [[Ring alloc]init];
    }
    return self;
}
-(void)tap
{
    double currentT = self.wj.currentT;
    
    if (currentT<24) {
        [self.kongtiao zhire];
    }else if (currentT>28)
    {
        [self.kongtiao zhileng];
        
    }else if (currentT<24&&currentT>28)
    {
        [self.kongtiao stop];
    }
}
-(void)tapA
{
    [self.ring turnOn];
}
-(void)tapB
{
    [self.ring turnOff];
}
@end
