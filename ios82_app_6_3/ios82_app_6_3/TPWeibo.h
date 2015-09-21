//
//  TPWeibo.h
//  ios82_app_6_3
//
//  Created by ying xu on 15/9/16.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "BaseWeibo.h"

@interface TPWeibo : BaseWeibo

@property(nonatomic,strong)NSString * thumbnail_pic;

@property(nonatomic,strong,readonly)NSURL * thumbnail_pic_url;



@end
