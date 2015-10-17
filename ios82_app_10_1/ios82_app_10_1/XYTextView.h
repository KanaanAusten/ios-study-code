//
//  XYTextView.h
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    KeyBoardTypeSys,
    KeyBoardTypeFace,
} KeyBoardType;

@interface XYTextView : UITextView


@property(nonatomic,assign,readonly)KeyBoardType currentType;

-(void)changeKeyboard:(KeyBoardType)type;

-(void)qiehuanKeyBoard;

@end
