//
//  KeyBoard.m
//  ios82_app_7_2
//
//  Created by ying xu on 25/9/22.
//  Copyright (c) 2025年 博看文思. All rights reserved.
//

#import "KeyBoard.h"

@interface KeyBoard ()
{
    int _b1_count;
}

@property(nonatomic,strong)UIButton * b1;
@property(nonatomic,strong)UIButton * b2;
@property(nonatomic,strong)UIButton * b3;

-(void)tapButton:(UIButton *)btn;


@end

@implementation KeyBoard


#pragma - mark 初始化

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
       [self otherInit];
    }
    return self;
}

-(void)awakeFromNib
{
    [self otherInit];
}

-(void)otherInit
{
    self.b1 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.b1.tag = 1;
    self.b1.translatesAutoresizingMaskIntoConstraints = NO;
    self.b1.backgroundColor = [UIColor orangeColor];
    [self.b1 setTitle:@"A" forState:UIControlStateNormal];
    [self.b1 addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
     [self addSubview:self.b1];
    
    self.b2 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.b2.tag = 2;
    self.b2.translatesAutoresizingMaskIntoConstraints = NO;
    self.b2.backgroundColor = [UIColor redColor];
    [self.b2 setTitle:@"B" forState:UIControlStateNormal];
    [self.b2 addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.b2];
    
    self.b3 = [UIButton buttonWithType:UIButtonTypeSystem];
    self.b3.tag = 3;
    
    self.b3.translatesAutoresizingMaskIntoConstraints = NO;
    self.b3.backgroundColor = [UIColor greenColor];
    [self.b3 setTitle:@"C" forState:UIControlStateNormal];
    [self.b3 addTarget:self action:@selector(tapButton:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.b3];
    
    
    NSDictionary * dic = NSDictionaryOfVariableBindings(_b1,_b2,_b3);
    
    NSString * str1 = @"H:|-[_b1]-[_b2(==_b1)]-[_b3(==_b1)]-|";
    
    NSString * str2 = @"V:|-[_b1]-|";
    NSString * str3 = @"V:|-[_b2]-|";
    NSString * str4 = @"V:|-[_b3]-|";
    
    
    NSArray * cs1 = [NSLayoutConstraint constraintsWithVisualFormat:str1 options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:dic];
    
    [self addConstraints:cs1];
    
    NSArray * cs2 = [NSLayoutConstraint constraintsWithVisualFormat:str2 options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:dic];
    
    [self addConstraints:cs2];
    
    NSArray * cs3 = [NSLayoutConstraint constraintsWithVisualFormat:str3 options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:dic];
    
    [self addConstraints:cs3];
    
    NSArray * cs4 = [NSLayoutConstraint constraintsWithVisualFormat:str4 options:NSLayoutFormatDirectionLeadingToTrailing metrics:nil views:dic];
    
    [self addConstraints:cs4];
    
    
    
}

-(void)addTapTarger:(id)target Action:(SEL)action
{
    self.target = target;
    self.action = action;
}

-(void)tapButton:(UIButton *)btn
{
   // NSLog(@"keyBoard上的按钮被点击");
    if (btn.tag == 1)
    {
        _b1_count++;
        if (_b1_count == 3)
        {
            _b1_count = 0;
            //当b1按钮点击三次需要执行的命令
            
            NSLog(@"3");
            
            //向领导汇报事件
            [self.target performSelector:self.action withObject:self];
            //[a test];
            
        }
    }

}



@end
