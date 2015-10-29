//
//  Person.m
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithDictionary:(NSDictionary *)dic
{
    if (self = [super init])
    {
        self.name = dic[@"name"];
        self.age = dic[@"age"];
        self.tel = dic[@"tel"];
        self.person_id = dic[@"person_id"];
    }
    return self;
}

- (NSDictionary *)Dictionary
{
    NSMutableDictionary *mDic = [NSMutableDictionary dictionaryWithCapacity:5];
    // value有值是添加对象，value为nil，则是移除此key
    [mDic setValue:self.name forKey:@"name"];
    [mDic setValue:self.age forKey:@"age"];
    [mDic setValue:self.tel forKey:@"tel"];
    [mDic setValue:self.person_id forKey:@"person_id"];
    
    return [NSDictionary dictionaryWithDictionary:mDic];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name = %@,age = %@,tel = %@",self.name,self.age,self.tel];
}

@end
