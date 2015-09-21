//
//  ComputerOP.h
//  ios82_app_6_2
//
//  Created by ying xu on 15/9/15.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

//负责计算操作

@protocol ComputerOPPrltocol;

typedef double(^COPB)(int a,int b);

@interface ComputerOP : NSObject

@property double a;
@property double b;

@property(nonatomic,strong)id<ComputerOPPrltocol> jisuanfaze;


-(double)jisuan;

@end

@protocol ComputerOPPrltocol <NSObject>

@property(nonatomic,strong,readonly)COPB b;

@end
