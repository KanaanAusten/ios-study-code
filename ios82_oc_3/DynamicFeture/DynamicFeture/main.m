//
//  main.m
//  DynamicFeture
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "FunctionA.h"
#import "FunctionB.h"
#import "SubFuncA.h"

int main(int argc, const char * argv[])
{

    FunctionA * fun1 = (FunctionA *)[FunctionB new];
    [fun1 test1];
    
    FunctionA * fun2 = (FunctionA *)[SubFuncA new];
    [fun2 test1];
    [fun2 test2];
    
    SubFuncA * fun3 = (SubFuncA *)[FunctionA new];
    [fun3 test1];
    [fun3 test2];
    
    SubFuncA * fun4 = (SubFuncA *)[FunctionB new];
    
    [fun4 test1];
    [fun4 test2];
    
    
    
    return 0;
}

