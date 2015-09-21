//
//  BaseWeibo.m
//  ios82_app_6_3
//
//  Created by ying xu on 15/9/16.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "BaseWeibo.h"

@implementation BaseWeibo


-(NSString *)description
{
    return self.name;
}

-(NSURL *)userImageURL
{
    return [NSURL URLWithString:self.profile_image_url];
}

@end
