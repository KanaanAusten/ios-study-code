//
//  UserManager.h
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserManager : NSObject

+(instancetype)share;

-(BOOL)isLogin;

-(void)loginWithName:(NSString *)name PassWord:(NSString *)pw;
-(void)logout;



@end
