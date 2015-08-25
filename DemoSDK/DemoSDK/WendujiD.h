//
//  WendujiD.h
//  DemoSDK
//
//  Created by 徐赢 on 15/1/4.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WendujiDelegate;


@interface WendujiD : NSObject

@property(nonatomic,weak)id<WendujiDelegate>delegate;

-(void)start;
-(void)stop;

@end


@protocol WendujiDelegate <NSObject>

-(void)wenduji:(WendujiD *)wdj didChangeT:(int)currentT;

-(void)wenduji:(WendujiD *)wdj didError:(NSError *)error;

@end
