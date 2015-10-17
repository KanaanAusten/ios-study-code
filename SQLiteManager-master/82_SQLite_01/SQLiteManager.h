//
//  SQLiteManager.h
//  82_SQLite_01
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SQLiteManager : NSObject

+ (instancetype)share;

/**
 *  更新数据库数据
 *
 *  @param sql sql语句
 *
 *  @return 返回成功或者失败
 */
- (BOOL)run:(NSString *)sql;

/**
 *  查找数据库数据
 *
 *  @param sql 查找的sql语句
 *
 *  @return 返回根据传进来的sql语句查询的结果
 */
- (NSArray *)getData:(NSString *)sql;


@end
