//
//  Entity.m
//  ttt
//
//  Created by ying xu on 15/9/18.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Entity.h"


@interface Entity ()

@property (nonatomic, retain) NSData * userData;

@end


@implementation Entity

@dynamic userData;

-(void)setUser:(User *)user
{
    //归档：把一个已经序列化的对象，转换成二进制数据
    NSData * d = [NSKeyedArchiver archivedDataWithRootObject:user];
    
    self.userData = d;
    
    
}

-(User *)user
{

    User * u = [NSKeyedUnarchiver unarchiveObjectWithData:self.userData];
    
    
    return u;
}

@end
