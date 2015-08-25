//
//  SourceManager_B.m
//  progressView、activityIndicator
//
//  Created by ibokan on 14/12/24.
//  Copyright (c) 2014年 ibokan. All rights reserved.
//

#import "SourceManager_B.h"

@interface SourceManager_B ()

@property(strong, nonatomic) NSTimer * timer;

@end
@implementation SourceManager_B

- (void)startDownload
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(progress) userInfo:nil repeats:YES];
}

- (void)progress
{
    static int num = 0, all = 10;
    if (num < 10)
    {
        num ++;
    }else
    {
        [self.timer setFireDate:[NSDate distantFuture]];
    }
    if (self.didReceiveDataBlockHandle)
    {
        self.didReceiveDataBlockHandle(num,all);
    }
    if (num == 10)
    {
        if (self.didFinishBlockHandle)
        {
            /*
            NSBundle * bundle = [NSBundle mainBundle];
            NSString * path = [bundle pathForResource:@"1111" ofType:@"png"];
            NSData * data = [NSData dataWithContentsOfFile:path];
             */
            UIImage * image = [UIImage imageNamed:@"1111"];
             
            self.didFinishBlockHandle(image);
        }
    }
}


@end
