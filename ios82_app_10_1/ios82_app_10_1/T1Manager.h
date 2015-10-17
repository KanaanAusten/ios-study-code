//
//  T1Manager.h
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^TMB)(BOOL isSuccess);

@interface T1Manager : NSObject

+(instancetype)share;

-(void)sendText:(NSString *)text BlockHandle:(TMB)b;

@end
