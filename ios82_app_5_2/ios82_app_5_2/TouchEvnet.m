//
//  TouchEvnet.m
//  ios82_app_5_2
//
//  Created by ying xu on 15/9/9.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TouchEvnet.h"


@implementation TouchEvnet

@dynamic name;
@dynamic date;

-(NSString *)description
{
    return self.name;
}

-(NSString *)dateString
{
    //实例化一个NSDateFormatter对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设定时间格式,这里可以设置成自己需要的格式
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    //用[NSDate date]可以获取系统当前时间
    NSString *currentDateStr = [dateFormatter stringFromDate:self.date];
    
    return currentDateStr;
}

@end
