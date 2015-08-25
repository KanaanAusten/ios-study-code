//
//  SourceManager_B.h
//  progressView、activityIndicator
//
//  Created by ibokan on 14/12/24.
//  Copyright (c) 2014年 ibokan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^DownLoadBlock)(float didLoad,float allLoad);
typedef void(^FinishBlock)(UIImage  * image);


@interface SourceManager_B : NSObject

@property(strong, nonatomic) DownLoadBlock didReceiveDataBlockHandle;
@property(strong, nonatomic) FinishBlock didFinishBlockHandle;

- (void)startDownload;


@end
