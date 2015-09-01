//
//  ViewController.m
//  ios82_app_2_1
//
//  Created by ying xu on 15/8/26.
//  Copyright (c) 2015年 博看文思. All rights reserved.


//

#import "ViewController.h"

/*
 布局两种模式
 1，基于父视图参考系的偏移frame
    基于父视图比例自动补偿调整。
 
 2，基于容器约束和内容压力求解视图位置
    动态求解替代补偿模式
 
 */

@interface ViewController ()
{
    NSLayoutConstraint * _tempc;
}

@property(nonatomic,strong)UIView * aView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.aView = [[UIView alloc]initWithFrame:CGRectZero];
    self.aView.backgroundColor = [UIColor grayColor];
    //此view使用约束求解进行布局
    self.aView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.aView];
    
    //代码创建约束
    //创建宽度约束
    //view1.attr1 <relation> multiplier × view2.attr2 + c.
    
    /*
    
    NSLayoutConstraint * c0 = [NSLayoutConstraint constraintWithItem:self.aView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:180];
    
    //装载约束
    [self.aView addConstraint:c0];
    
    */
    
    //长宽比约束2:1
    NSLayoutConstraint * c1 = [NSLayoutConstraint constraintWithItem:self.aView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.aView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    [self.aView addConstraint:c1];
    
    NSLayoutConstraint * c2 = [NSLayoutConstraint constraintWithItem:self.aView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:0 constant:100];
    [self.aView addConstraint:c2];
    
    _tempc = c2;
    
    
    NSLayoutConstraint * c3 = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.aView attribute:NSLayoutAttributeCenterX multiplier:1 constant:0];
    
    [self.view addConstraint:c3];
    
    NSLayoutConstraint * c4 = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.aView attribute:NSLayoutAttributeCenterY multiplier:1 constant:0];
    
    [self.view addConstraint:c4];
    
    
    
    
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
