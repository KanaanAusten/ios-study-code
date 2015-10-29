//
//  PersonManager.h
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonManager : NSObject

// 单例初始化
+ (instancetype)share;

/**
 *  添加人员方法
 *
 *  @param person 传进来Person类的一个对象
 *
 *  @return 返回添加成功或者失败
 */
- (BOOL)addPerson:(Person *)person;

/**
 *  删除人员
 *
 *  @param person_id 通过唯一标识符person_id删除
 *
 *  @return 返回删除成功或者失败
 */
- (BOOL)deletePersonWithPersonID:(NSString *)person_id;

/**
 *  修改人员信息
 *
 *  @param person 对传进来的person对象进行修改
 *
 *  @return 返回修改成功或者失败
 */
- (BOOL)updatePerson:(Person *)person;

/**
 *  查询所有人员信息
 *
 *  @return 将所有人员添加到数组中返回
 */
- (NSArray *)searchAllPerson;

/**
 *  根据条件查询
 *
 *  @param person 通过传进来的对象查询
 *
 *  @return 将所有符合条件的人员添加到数组中返回
 */
- (NSArray *)searchPersonInfo:(Person *)person;

@end
