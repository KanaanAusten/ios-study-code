//
//  PINKeyBoard.h
//  ios82_app_7_1
//
//  Created by ying xu on 15/9/22.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol PINKeyBoardDelegate;


@interface PINKeyBoard : UIView

@property(nonatomic,weak)id target;
@property(nonatomic,assign)SEL action;


@property(nonatomic,weak)id<PINKeyBoardDelegate>delegate;

@property(nonatomic,strong,readonly)NSString * password;

@end

@protocol PINKeyBoardDelegate <NSObject>

@optional
-(void)pinKeyBoard:(PINKeyBoard*)kb didFinishPassword:(NSString *)pw;

@end





