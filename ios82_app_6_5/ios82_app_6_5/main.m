//
//  main.m
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"


void fun(int a)
{
    NSLog(@"a = %d",a);
}

int main(int argc, char * argv[]) {
    
   // fun(1);fun(2);
    
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
