//
//  SourceManagerD.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol SourceManagerDelegate;

@interface SourceManagerD : NSObject

@property(nonatomic,weak)id<SourceManagerDelegate>delegate;

-(void)startGetData;

@end

@protocol SourceManagerDelegate <NSObject>

-(void)sourceManager:(SourceManagerD *)manager didReceiveString:(NSString *)string;

-(void)sourceManager:(SourceManagerD *)manager didError:(NSError *)error;

@end
