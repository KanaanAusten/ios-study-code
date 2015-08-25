//
//  KongtiaoB.h
//  DemoSDK
//
//  Created by 徐赢 on 15/1/4.
//  Copyright (c) 2015年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^KTBlockType)(NSError * error);

@interface KongtiaoB : NSObject


@property(nonatomic,strong)KTBlockType errorBlockHandle;

-(void)zhileng;
-(void)zhire;

-(void)stop;

@end
