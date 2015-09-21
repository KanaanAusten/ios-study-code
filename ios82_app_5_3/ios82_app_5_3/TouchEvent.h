//
//  TouchEvent.h
//  ios82_app_5_3
//
//  Created by ying xu on 15/9/10.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface TouchEvent : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSDate * date;

@property (nonatomic,strong,readonly)NSString * dateString;


@end
