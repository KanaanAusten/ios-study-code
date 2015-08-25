//
//  SourceManagerB.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^SMReceiveBlock)(NSString * string);
typedef void(^SMErrorBlock)(NSError * error);

@interface SourceManagerB : NSObject

-(void)startGetString;

-(void)setReceiveStringBlock:(SMReceiveBlock)blockHandle;
-(void)setErrorBlock:(SMErrorBlock)blockHandle;

@end
