//
//  BaseWeibo.h
//  ios82_app_6_3
//
//  Created by ying xu on 15/9/16.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseWeibo : NSObject

@property(nonatomic,strong)NSString * name;
@property(nonatomic,strong)NSString * profile_image_url;

@property(nonatomic,strong,readonly)NSURL * userImageURL;

@property(nonatomic,strong)NSString * text;



@end
