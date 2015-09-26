//
//  Line.h
//  ios82_app_8_1
//
//  Created by ying xu on 15/9/24.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface Line : NSObject

//颜色默认为红色
@property(nonatomic,strong)UIColor * color;

//宽度默认为1
@property(nonatomic,assign)double width;

@property(nonatomic,strong,readonly)NSArray * points;

-(void)addLinePoint:(CGPoint )point;


@property(nonatomic,strong,readonly)UIBezierPath * path;



@end
