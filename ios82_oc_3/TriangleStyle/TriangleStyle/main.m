//
//  main.m
//  TriangleStyle
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "TriangleB.h"

#import "MyTriangle.h"

typedef int iOSSystemBreakModel;

#define NonmalBreakModel 0

int main(int argc, const char * argv[])
{
    
    MyTriangle * t = [[MyTriangle alloc]init];
    t.a = 100;
    t.b = 100;
    t.c = 100;
    
    double s = [t area];
    NSLog(@"s = %g",s);
    
    switch (t.style) {
        case TriangleStyleBig:
            NSLog(@"这是一个大三角形");
            break;
        case TriangleStyleNomal:
            NSLog(@"这是一个中型三角形");
            break;
        case TriangleStyleSmall:
            NSLog(@"这是一个小三角形");
            break;
        case TriangleStyleError:
            NSLog(@"三角形错误！");
            break;
        default:
            break;
    }
    
    
    
    /*
   // int a = 0;
    iOSSystemBreakModel model = NonmalBreakModel;
    

    TriangleB * tb = [[TriangleB alloc]init];
    tb.a = 4;
    tb.b = 4;
    tb.c = 4;
    
    double a = [tb area];
    
    NSLog(@"a = %g",a);
    
    double c = [tb zhouchang];
    NSLog(@"c = %g",c);

     */
    return 0;
}

