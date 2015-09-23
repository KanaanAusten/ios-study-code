//
//  CountManager.m
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "CountManager.h"

@implementation CountManager

+(instancetype)share
{
    static CountManager * m = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[CountManager alloc]init];
    });
    return m;
}

-(void)startAdd
{
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(tt) userInfo:nil repeats:YES];
    
     
}

-(void)requsetCountWithBlockHandle:(CMB)b
{
    NSNotificationCenter * center = [NSNotificationCenter defaultCenter];
    
    [center addObserverForName:CountManagerChangeValueNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
        b(self.count);
    }];
}

-(void)tt
{
    int t = self.count.intValue;
    
    t++;
    self.count = [NSString stringWithFormat:@"%d",t];
    
    NSNotificationCenter * center = [NSNotificationCenter defaultCenter];
    
    [center postNotificationName:CountManagerChangeValueNotification object:self userInfo:@{@"count":self.count}];
}
@end
