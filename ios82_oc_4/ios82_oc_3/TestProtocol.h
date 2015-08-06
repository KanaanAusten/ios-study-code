//
//  TestProtocol.h
//  ios82_oc_3
//
//  Created by ying xu on 15/8/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestProtocol <NSObject>

@required//必须实现（默认）

-(void)test1;

@optional//可选实现（常用）

-(void)test2;

@end
