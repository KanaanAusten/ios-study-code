//
//  KeyBoard.h
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^KBB)(NSString * indexTitle,NSInteger index);

@interface KeyBoard : UIView

@property(nonatomic,strong)KBB didTapFaceButtonBlockHandle;

@end
