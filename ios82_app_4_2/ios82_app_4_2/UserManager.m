//
//  UserManager.m
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "UserManager.h"

@interface UserManager ()

@property(nonatomic,assign)BOOL isL;

@end

@implementation UserManager

+(instancetype)share
{
    static UserManager * m = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[UserManager alloc]init];
    });
    return m;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSUserDefaults * u = [NSUserDefaults standardUserDefaults];
        self.isL = [u boolForKey:@"isL"];
    }
    return self;
}

-(void)loginWithName:(NSString *)name PassWord:(NSString *)pw
{
    self.isL = YES;
    NSUserDefaults * u = [NSUserDefaults standardUserDefaults];
    [u setBool:self.isL forKey:@"isL"];
}

-(void)logout
{
    self.isL = NO;
    NSUserDefaults * u = [NSUserDefaults standardUserDefaults];
    [u setBool:self.isL forKey:@"isL"];
    
}

-(BOOL)isLogin
{

    return self.isL;
    
}

@end
