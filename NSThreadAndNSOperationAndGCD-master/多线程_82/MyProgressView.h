//
//  MyProgressView.h
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSOperationViewController.h"

@interface MyProgressView : NSOperation

@property (strong, nonatomic) NSOperationViewController *myDelegate;

@end
