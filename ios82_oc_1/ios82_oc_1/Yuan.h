//
//  Yuan.h
//  ios82_oc_1
//
//  Created by ying xu on 15/8/4.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Yuan : NSObject

@property double r;
@property CGPoint o;

@property(readonly) double s;
@property(readonly) double c;

-(instancetype)initWithR:(double)r O:(CGPoint)o;

-(BOOL)isCoverOtherYuan:(Yuan *)y;


@end
