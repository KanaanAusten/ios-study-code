//
//  XYTextView.m
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "XYTextView.h"

#import "KeyBoard.h"

@interface XYTextView ()

@property(nonatomic,strong)KeyBoard * kb;

@end

@implementation XYTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self loadKeyBoard];
    }
    return self;
}

-(void)awakeFromNib
{
    [self loadKeyBoard];
}

-(void)loadKeyBoard
{
    UIScreen * s = [UIScreen mainScreen];
    
    __weak __block XYTextView * copy_self = self;
    
    self.kb = [[KeyBoard alloc]initWithFrame:CGRectMake(0, 0, s.bounds.size.width, 200)];
    self.kb.didTapFaceButtonBlockHandle = ^(NSString * indexTitle ,NSInteger index){
        
        
      copy_self.text =  [copy_self.text stringByAppendingString:indexTitle];
        
        /*!!!!
        NSString * str = copy_self.text;
        str = [str stringByAppendingString:indexTitle];
        copy_self.text = str;
         */
    };
}


-(void)qiehuanKeyBoard
{
    if (self.currentType == KeyBoardTypeFace)
    {
        [self changeKeyboard:KeyBoardTypeSys];
    }
    else
    {
        [self changeKeyboard:KeyBoardTypeFace];
    }
}

-(void)changeKeyboard:(KeyBoardType)type
{
    switch (type)
    {
        case KeyBoardTypeFace:
        {
            if (self.isFirstResponder)
            {
                self.inputView = self.kb;
                [self reloadInputViews];
            }
            else
            {
                self.inputView = self.kb;
            }
            _currentType = type;
        }
            break;
        case KeyBoardTypeSys:
        {
            if (self.isFirstResponder)
            {
                self.inputView = nil;
                [self reloadInputViews];
            }
            else
            {
                self.inputView = nil;
            }
            _currentType = type;
        }
            break;
            
        default:
            break;
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
