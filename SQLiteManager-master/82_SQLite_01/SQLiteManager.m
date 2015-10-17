//
//  SQLiteManager.m
//  82_SQLite_01
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "SQLiteManager.h"
#import "FMDatabase.h"

@interface SQLiteManager ()

@property (strong, nonatomic) FMDatabase *fmDB;

@end

@implementation SQLiteManager

+ (instancetype)share
{
    static SQLiteManager *cm = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cm = [[SQLiteManager alloc] init];
    });
    return cm;
}

- (instancetype)init
{
    if (self = [super init])
    {
        [self creatDB];
    }
    return self;
}


- (void)creatDB
{
    // 1.获取NSHomeDirectory路径
    NSString *path = [NSString stringWithFormat:@"%@/Documents/app.db",NSHomeDirectory()];
    NSLog(@"path = %@",path);
    
    // 2.初始化FMDB，并且在创建的时候指定数据库路径并且关联一个数据库
    self.fmDB = [[FMDatabase alloc] initWithPath:path];
    
    // 3.通过FMDB打开数据库
    if([self.fmDB open])
    {
        // 4.执行数据库操作，如果当前有person，则跳过，没有则创建
        NSString *sql = @"CREATE TABLE \"Person\" (\"person_id\" INTEGER PRIMARY KEY AUTOINCREMENT, \"name\" TEXT, \"tel\" TEXT, \"age\" TEXT)";
        [self run:sql];
    }
    else
    {
        NSLog(@"打开数据库失败!");
        return ;
    }
    
    
}

- (BOOL)run:(NSString *)sql
{
    return [self.fmDB executeUpdate:sql];
}

- (NSArray *)getData:(NSString *)sql
{
    FMResultSet *result = [self.fmDB executeQuery:sql];
    NSMutableArray *mArr = [NSMutableArray arrayWithCapacity:0];
    while ([result next])
    {
        NSDictionary *dic = [result resultDictionary];
        [mArr addObject:dic];
    }

    return [NSArray arrayWithArray:mArr];
}












@end
