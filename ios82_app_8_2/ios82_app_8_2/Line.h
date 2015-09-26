//
//  Line.h
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface Line : NSObject

@property(nonatomic,strong)UIColor * color;

@property(nonatomic,assign)double width;

@property(nonatomic,strong,readonly)NSArray * points;

-(void)addPoint:(CGPoint)point;

@property(nonatomic,strong,readonly)UIBezierPath * path;

@end
