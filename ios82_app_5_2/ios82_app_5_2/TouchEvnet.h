//
//  TouchEvnet.h
//  ios82_app_5_2
//
//  Created by ying xu on 15/9/9.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TouchEvnet : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * date;

@property (nonatomic,strong,readonly)NSString * dateString;

@end
