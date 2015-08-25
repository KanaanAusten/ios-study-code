//
//  KongtiaoD.h
//  DemoSDK
//
//  Created by 徐赢 on 15/1/4.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol KongtiaoDelegate;

@interface KongtiaoD : NSObject

@property(nonatomic,weak)id<KongtiaoDelegate>delegate;

-(void)zhileng;
-(void)zhire;

-(void)stop;


@end


@protocol KongtiaoDelegate <NSObject>

-(void)kongtiao:(KongtiaoD *)kt didError:(NSError *)error;

@end
