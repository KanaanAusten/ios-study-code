//
//  KeyBoard.m
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "KeyBoard.h"

@interface KeyBoard ()

@property(nonatomic,strong)NSArray * faceItems;



@end

@implementation KeyBoard

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        [self loadFaceButtons];
    }
    return self;
}

-(void)awakeFromNib
{
    [self loadFaceButtons];
}
-(void)loadFaceButtons
{
    
    NSString * path = [[NSBundle mainBundle] pathForResource:@"emoticons" ofType:@"plist"];
    
    self.faceItems = [NSArray arrayWithContentsOfFile:path];
    
    for (int i = 0; i<4; i++)
    {
        UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(i*40, 0, 40, 40);
        button.tag = i;
        
        NSString * imageName = self.faceItems[i][@"png"];
        UIImage * image = [UIImage imageNamed:imageName];
        
        [button setImage:image forState:UIControlStateNormal];
        
        [button addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
    }
}

-(void)tapButton:(UIButton *)button
{
    NSInteger  index = button.tag;
    NSString * name = self.faceItems[index][@"chs"];
    if (self.didTapFaceButtonBlockHandle)
    {
        self.didTapFaceButtonBlockHandle(name,index);
    }
    
}

@end
