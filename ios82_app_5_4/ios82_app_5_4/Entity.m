//
//  Entity.m
//  ios82_app_5_4
//
//  Created by ying xu on 15/9/11.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "Entity.h"

@interface Entity ()

//开发者使用
@property (nonatomic, retain) NSData * imageData;

@end


@implementation Entity

@dynamic imageData;

-(void)setImage:(UIImage *)image
{
    //UIImagePNGRepresentation将图片对象，转化成二进制数据方便传输和储存
    NSData * temp = UIImagePNGRepresentation(image);
    self.imageData = temp;
}

-(UIImage *)image
{
    return [UIImage imageWithData:self.imageData];
}


@end
