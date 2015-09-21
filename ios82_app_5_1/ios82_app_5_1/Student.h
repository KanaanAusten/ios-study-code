//
//  Student.h
//  ios82_app_5_1
//
//  Created by ying xu on 15/9/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Student : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * age;

@property (nonatomic, strong,readonly)NSString * fullName;

@end
