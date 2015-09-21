//
//  Entity.h
//  ios82_app_5_4
//
//  Created by ying xu on 15/9/11.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

#import <UIKit/UIKit.h>


@interface Entity : NSManagedObject

//用户使用
@property(nonatomic,strong)UIImage * image;

@end
