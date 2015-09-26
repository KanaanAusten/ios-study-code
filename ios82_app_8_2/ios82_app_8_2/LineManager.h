//
//  LineManager.h
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//




#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

#import "Line.h"


typedef void(^LMB)(NSArray * lines);

@interface LineManager : NSObject

+(instancetype)share;

@property(nonatomic,strong,readonly)NSArray * lines;

@property(nonatomic,strong)LMB didChangeLinesBlockHandle;

-(void)addLineWithStartPoint:(CGPoint)point Color:(UIColor *)c Width:(double)w;

-(void)addPointAtLastLine:(CGPoint)point;



@end
