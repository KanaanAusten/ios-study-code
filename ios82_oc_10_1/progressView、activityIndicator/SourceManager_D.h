//
//  SourceManaer_D.h
//  progressView、activityIndicator
//
//  Created by ibokan on 14/12/24.
//  Copyright (c) 2014年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@protocol SourceManagerDelegate;

@interface SourceManager_D : NSObject

@property (nonatomic, weak)id<SourceManagerDelegate>delegate;

- (void)startDownload;

@end

@protocol SourceManagerDelegate <NSObject>
@optional
- (void)sourceManager:(SourceManager_D *)sm_d didReceiveDataLength:(float)didLoad allDown:(float)allLoad;

- (void)sourceManager:(SourceManager_D *)sm_d didFinishWithImage:(UIImage *)image;

@end
