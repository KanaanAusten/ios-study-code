//
//  Student.m
//  ios82_app_5_1
//
//  Created by ying xu on 15/9/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Student.h"


@implementation Student

@dynamic name;
@dynamic age;

-(NSString *)fullName
{
    return [NSString stringWithFormat:@"%@%@",self.name,self.age];
}


-(NSString *)description
{
    return [NSString stringWithFormat:@"name:%@,age:%@",self.name,self.age];
}

@end
