//
//  ADManager.h
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ADManager : NSObject

+(instancetype)share;

-(BOOL)isHasAD;

-(UIImage *)adImage;


@end
