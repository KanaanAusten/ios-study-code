//
//  SourceManaer_D.m
//  progressView、activityIndicator
//
//  Created by ibokan on 14/12/24.
//  Copyright (c) 2014年 ibokan. All rights reserved.
//

#import "SourceManager_D.h"

@interface SourceManager_D ()

@property(strong, nonatomic) NSTimer * timer;

@end
@implementation SourceManager_D


- (void)startDownload
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(progress) userInfo:nil repeats:YES];
}

- (void)progress
{
    static int num = 1, all = 10 ;
    if (num < 10)
    {
        num ++;
    }else
    {
        [self.timer setFireDate:[NSDate distantFuture]];
    }
    //[self.delegate sourceManager:self didDown:num allDown:all];
    [self.delegate sourceManager:self didReceiveDataLength:num allDown:all];
    if (num == 10)
    {
        /*
        NSBundle * bundle = [NSBundle mainBundle];
        NSString * path = [bundle pathForResource:@"1111" ofType:@"png"];
        NSData * data = [NSData dataWithContentsOfFile:path];
         */
        
        UIImage * image = [UIImage imageNamed:@"1111.png"];
        
       // [self.delegate sourceManager:self didFinishWithData:data];
        [self.delegate sourceManager:self didFinishWithImage:image];
    }
}


@end
