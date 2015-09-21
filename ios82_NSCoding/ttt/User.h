//
//  User.h
//  ttt
//
//  Created by ying xu on 15/9/18.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

//如果一定对象，想被保存
//那么这个对象一定需要遵守NSCoding协议，并实现其方法

//遵守NSCoding 可以被归档成二进制文件
//NSKeyedArchiver   把遵守NSCoding的对象变成二进制
//NSKeyedUnarchiver   把二进制文件编程对象
@interface User : NSObject<NSCoding>

@property(nonatomic,strong)NSString * uid;

@end
