//
//  MyProgressView.m
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "MyProgressView.h"

@implementation MyProgressView

- (void)main
{
    for (int i = 0; i < 100; i++)
    {
        [NSThread sleepForTimeInterval:0.2f];
        // 通知主线程更新UI
        [self performSelectorOnMainThread:@selector(updateUI) withObject:nil waitUntilDone:YES];
    }
}

// 更新UI
- (void)updateUI
{
    self.myDelegate.progressView.progress += 0.01;
}

@end
