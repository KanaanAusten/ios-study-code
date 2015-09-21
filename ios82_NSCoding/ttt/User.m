//
//  User.m
//  ttt
//
//  Created by ying xu on 15/9/18.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "User.h"

@implementation User

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.uid forKey:@"uid"];
}
- (id)initWithCoder:(NSCoder *)aDecoder
{
   self.uid =  [aDecoder decodeObjectForKey:@"uid"];
    
    return self;
}


@end
