//
//  T1ViewController.m
//  ios82_app_2_1
//
//  Created by ying xu on 15/8/26.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T1ViewController.h"



@interface T1ViewController ()

{
    NSLayoutConstraint * _tempc;
}

@end

@implementation T1ViewController
- (IBAction)tapb:(id)sender
{
    _tempc.constant += 10;
    
    //强制使用新约束条件计算新位置
    [self.view layoutIfNeeded];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView * aView = [[UIView alloc]initWithFrame:CGRectZero];
    aView.backgroundColor = [UIColor redColor];
    aView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:aView];
    
    
    UIView * bView = [[UIView alloc]initWithFrame:CGRectZero];
    bView.backgroundColor = [UIColor greenColor];
    bView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:bView];
    
    
    //1,aView的长宽比为1的约束
    NSLayoutConstraint * c1 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:aView attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    
    //2,bView长宽比为1的约束
    NSLayoutConstraint * c2 = [NSLayoutConstraint constraintWithItem:bView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:bView attribute:NSLayoutAttributeHeight multiplier:1 constant:0];
    
    //3,aView和bView等宽的约束
    NSLayoutConstraint * c3 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:bView attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    //4，aView的宽度约束
    NSLayoutConstraint * c4 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:100];
    
    _tempc = c4;
    
    //5，aView对上边界的约束
    NSLayoutConstraint * c5 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:20];
    //6，aView对左边界的约束
    NSLayoutConstraint * c6 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:20];
    
    //7，bView的左边界与aView的垂直中线对齐的约束
    NSLayoutConstraint * c7 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:bView attribute:NSLayoutAttributeLeading multiplier:1 constant:0];
    
    //8，bView的上边界与aView的下边界对齐
    NSLayoutConstraint * c8 = [NSLayoutConstraint constraintWithItem:aView attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:bView attribute:NSLayoutAttributeTop multiplier:1 constant:0];
    
    NSArray * cs = @[c1,c2,c3,c4,c5,c6,c7,c8];
    
    [self.view addConstraints:cs];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
