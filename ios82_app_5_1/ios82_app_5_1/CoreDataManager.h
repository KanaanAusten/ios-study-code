//
//  CoreDataManager.h
//  ios82_app_5_1
//
//  Created by ying xu on 15/9/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <CoreData/CoreData.h>

@interface CoreDataManager : NSObject

+(instancetype)share;

@property(nonatomic,strong,readonly)NSManagedObjectContext * context;

@end
