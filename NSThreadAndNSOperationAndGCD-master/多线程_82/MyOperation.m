//
//  MyOperation.m
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "MyOperation.h"

@implementation MyOperation

#pragma mark 在将操作加入到操作队列时会回调main方法
- (void)main
{
    NSLog(@"当前线程开始:%@",[NSThread currentThread]);
    NSLog(@"当前是%@",self.myName);
    [NSThread sleepForTimeInterval:1.0f];
//    NSLog(@"主线程:%@",[NSThread mainThread]);
    NSLog(@"当前线程结束:%@",[NSThread currentThread]);


}

@end
