//
//  WendujiB.h
//  DemoSDK
//
//  Created by 徐赢 on 15/1/4.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^WDJBlockType1)(double  t);
typedef void(^WDJBlockType2)(NSError * error);

@interface WendujiB : NSObject


@property(nonatomic,strong)WDJBlockType1 changeTBlockHandle;

@property(nonatomic,strong)WDJBlockType2 errorBlockHandle;




-(void)start;
-(void)stop;

@end
