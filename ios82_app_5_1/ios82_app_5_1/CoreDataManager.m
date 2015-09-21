//
//  CoreDataManager.m
//  ios82_app_5_1
//
//  Created by ying xu on 15/9/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "CoreDataManager.h"

#define ModelName @"Model"

@implementation CoreDataManager


+(instancetype)share
{
    static CoreDataManager * m = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m = [[CoreDataManager alloc]init];
    });
    
    return m;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self loadCoreData];
    }
    return self;
}

-(void)loadCoreData
{
    //1，创建数据模型文件，然后配置其实体和属性
    
    
    //2，通过数据模型文件，创建数据模型对象
    
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:ModelName withExtension:@"momd"];
    
    NSManagedObjectModel * model = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    
    
    //3通过数据模型对象，创建持续储存协调器
    
    NSPersistentStoreCoordinator * coordinator = [[NSPersistentStoreCoordinator alloc]initWithManagedObjectModel:model];
    
    //4，通过持续储存协调器在硬盘中创建一个储存文件
    
        //获取沙盒目录：
    NSURL * url = [self applicationDocumentsDirectory];
    
    url = [url URLByAppendingPathComponent:@"t1.sqlite"];
    
    NSError * error;
    
   NSPersistentStore * store = [coordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:url options:nil error:&error];
    
    if (store == nil)
    {
        NSLog(@"%@",error.localizedDescription);
        return;
    }
    
    //5，创建一个Coredata上下文（环境）与持续储存协调器绑定。
    
    NSManagedObjectContext * context = [[NSManagedObjectContext alloc]init];
    [context setPersistentStoreCoordinator:coordinator];
    
    _context = context;
    
    
}

- (NSURL *)applicationDocumentsDirectory {
    // The directory the application uses to store the Core Data store file. This code uses a directory named "com.ibokanwisdom.ttt" in the application's documents directory.
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
