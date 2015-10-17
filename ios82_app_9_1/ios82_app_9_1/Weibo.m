//
//  Weibo.m
//  ios82_app_9_1
//
//  Created by ying xu on 15/9/28.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Weibo.h"

@implementation Weibo

-(NSString *)title
{
    return self.userName;
}

-(NSString *)subtitle
{
    return self.text;
}

-(CLLocationCoordinate2D)coordinate
{
    CLLocationCoordinate2D cd;
    
    double latitude = [self.location[@"latitude"] doubleValue];
    double longitude = [self.location[@"longitude"] doubleValue];
    
    cd.latitude = latitude;
    cd.longitude = longitude;
    
    return cd;
    
    
}

@end
