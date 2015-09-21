//
//  WeiboManager.h
//  ios82_app_6_3
//
//  Created by ying xu on 15/9/16.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^WMB)(NSArray * weibos);

@interface WeiboManager : NSObject

+(instancetype)share;

-(void)requestWeiboWithCount:(int)count BlockHandle:(WMB)b;


@end
