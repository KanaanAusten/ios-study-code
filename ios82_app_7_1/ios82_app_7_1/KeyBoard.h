//
//  KeyBoard.h
//  ios82_app_7_1
//
//  Created by ying xu on 15/9/22.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KeyBoard : UIView


@property(nonatomic,weak)id target;

@property(nonatomic,assign)SEL action;

-(void)addTapTarger:(id)target Action:(SEL)action;

@end
