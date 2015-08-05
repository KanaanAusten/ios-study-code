//
//  MyTriangle.h
//  TriangleStyle
//
//  Created by 徐赢 on 14-9-16.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import "TriangleA.h"


typedef enum : NSUInteger {
    TriangleStyleBig,//面积大于100
    TriangleStyleNomal,//介于大小中间
    TriangleStyleSmall,//面积小于10
    TriangleStyleError,//面积为-1时
} TriangleStyle;

@interface MyTriangle : TriangleA
//TriangleStyle为自定义枚举类型，
//style为TriangleStyle类型的变量
//style的值只能存储TriangleStyleBig...之中的一个值
@property TriangleStyle style;





@end
