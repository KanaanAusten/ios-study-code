//
//  main.m
//  OC-myxj
//
//  Created by 徐赢 on 14-9-12.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GaojiXiangji.h"
//现用给定的SDK，自作一个美颜相加，在拍照时同时美颜
int main(int argc, const char * argv[])
{
    GaojiXiangji * x = [[GaojiXiangji alloc]init];
    [x takePhoto];
    

    return 0;
}

