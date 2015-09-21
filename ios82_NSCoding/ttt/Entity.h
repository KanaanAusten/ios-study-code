//
//  Entity.h
//  ttt
//
//  Created by ying xu on 15/9/18.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#include "User.h"

@interface Entity : NSManagedObject


@property(nonatomic,strong)User * user;


@end
