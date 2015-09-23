//
//  CountManager.h
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#define CountManagerChangeValueNotification @"CountManagerChangeValueNotification"


typedef void(^CMB)(NSString * count);

@interface CountManager : NSObject

+(instancetype)share;

@property(nonatomic,strong)NSString * count;

-(void)startAdd;

-(void)requsetCountWithBlockHandle:(CMB)b;

@end
