//
//  PersonManager.m
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "PersonManager.h"
#import "SQLiteManager.h"

@interface PersonManager ()

@property (strong, nonatomic) SQLiteManager *sqlManager;

@end

@implementation PersonManager

+ (instancetype)share
{
    static PersonManager *cm = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cm = [[PersonManager alloc] init];
    });
    return cm;
}

- (instancetype)init
{
    if (self = [super init])
    {
        self.sqlManager = [SQLiteManager share];
    }
    return self;
}

// 添加
- (BOOL)addPerson:(Person *)person
{
    // 通过person的属性拼接添加的sql语句
    NSString *sql = [NSString stringWithFormat:@"insert into person (name,age,tel) values ('%@','%@','%@')",person.name,person.age,person.tel];
    if ([self.sqlManager run:sql])
    {
        NSLog(@"添加成功!");
        return YES;
    }
    return NO;
}

// 删除
- (BOOL)deletePersonWithPersonID:(NSString *)person_id
{
    NSString *sql = [NSString stringWithFormat:@"delete from person where person_id = %@",person_id];
    if ([self.sqlManager run:sql])
    {
        NSLog(@"删除成功!");
        return YES;
    }
    return NO;
}

// 修改
- (BOOL)updatePerson:(Person *)person
{
    if (person.person_id == nil)
    {
        return NO;
    }
    NSString *sql = [NSString stringWithFormat:@"update person set name = '%@',age = '%@',tel = '%@' where person_id = %@",person.name,person.age,person.tel,person.person_id];
    if ([self.sqlManager run:sql])
    {
        NSLog(@"修改成功");
        return YES;
    }
    return NO;
}

// 查询所有
- (NSArray *)searchAllPerson
{
    NSString *sql = @"select * from person";
    NSArray *result = [self.sqlManager getData:sql];// 返回的结果数组中以字典的形式保存着人员信息
    
    // 遍历数组，将数组中的字典赋给一个对象，将所有对象装进数组返回
    NSMutableArray *mArr = [NSMutableArray arrayWithCapacity:5];
    for (NSDictionary *dic in result)
    {
        Person *person = [[Person alloc] initWithDictionary:dic];
        [mArr addObject:person];
    }
    return [NSArray arrayWithArray:mArr];
}

// 按条件查询
- (NSArray *)searchPersonInfo:(Person *)person
{
    // 拿到当前对象的所有属性值
    NSDictionary *dic = person.Dictionary;
    NSLog(@"查询拿到的dic = %@",dic);
    
    NSMutableString *mStr = [NSMutableString stringWithCapacity:5];
    NSArray *keys = [dic allKeys];
    for (int i = 0; i < dic.count; i++)
    {
        // select * from person where name = value and age ＝ value and tel ＝ value
        // 以上面的形式设置每一个key对应的值
        NSString *str = [NSString stringWithFormat:@"%@ = '%@' and ",keys[i],dic[keys[i]]];
        [mStr appendString:str];
    }
    // 截取可变字符串的第0位到最后一个and之前来作为最后的sql语句条件
    NSString *resultStr = [mStr substringWithRange:NSMakeRange(0, mStr.length - 4)];
    // 拼接sql语句,并且执行查询
    NSString *sql = [NSString stringWithFormat:@"select * from person where %@",resultStr];
    NSLog(@"sql = %@",sql);
    NSArray *result = [self.sqlManager getData:sql];
    
    // 返回的结果数组中同样是字典形式的数据
    NSMutableArray *mArr = [NSMutableArray arrayWithCapacity:5];
    for (NSDictionary *dic in result)
    {
        Person *person = [[Person alloc] initWithDictionary:dic];
        [mArr addObject:person];
    }
    return [NSArray arrayWithArray:mArr];
    
}



@end
