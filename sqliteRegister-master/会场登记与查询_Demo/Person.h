//
//  Person.h
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (strong, nonatomic) NSString *person_id;
@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *age;
@property (strong, nonatomic) NSString *tel;

@property (strong, nonatomic, readonly)NSDictionary *Dictionary;

- (instancetype)initWithDictionary:(NSDictionary *)dic;

@end
