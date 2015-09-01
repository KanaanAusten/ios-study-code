//
//  T2ViewController.m
//  ios82_app_2_1
//
//  Created by ying xu on 15/8/27.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T2ViewController.h"

@interface T2ViewController ()

@end

@implementation T2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView * v1 = [[UIView alloc]initWithFrame:CGRectZero];
    v1.translatesAutoresizingMaskIntoConstraints = NO;
    v1.backgroundColor = [UIColor redColor];
    [self.view addSubview:v1];
    
    UIView * v2 = [[UIView alloc]initWithFrame:CGRectZero];
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    v2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:v2];
    
    
    UIView * v3 = [[UIView alloc]initWithFrame:CGRectZero];
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    v3.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:v3];
    
    NSLayoutConstraint * c1 = [NSLayoutConstraint constraintWithItem:v1 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:v1 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    NSLayoutConstraint * c2 = [NSLayoutConstraint constraintWithItem:v2 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:v2 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    NSLayoutConstraint * c3 = [NSLayoutConstraint constraintWithItem:v3 attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:v3 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    
    /*
    NSLayoutConstraint * c4 = [NSLayoutConstraint constraintWithItem:v1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:v2 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    
    NSLayoutConstraint * c5 = [NSLayoutConstraint constraintWithItem:v1 attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:v3 attribute:NSLayoutAttributeWidth multiplier:1 constant:0];
    */
    NSArray * cs0 = @[c1,c2,c3];
    
    [self.view addConstraints:cs0];
    
    
    NSString * s1 = @"H:|-x-[v1][v2(==v1)][v3(==v1)]|";
    
    NSDictionary * dic = NSDictionaryOfVariableBindings(v1,v2,v3);
    
    
    NSArray * cs1 = [NSLayoutConstraint constraintsWithVisualFormat:s1 options:0 metrics:nil views:dic];
    
    [self.view addConstraints:cs1];
    
    NSArray * cs2 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v1]" options:0 metrics:nil views:dic];
    [self.view addConstraints:cs2];
    
    NSArray * cs3 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v2]" options:0 metrics:nil views:dic];
    [self.view addConstraints:cs3];
    
    NSArray * cs4 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|[v3]" options:0 metrics:nil views:dic];
    [self.view addConstraints:cs4];
    
 
    
    
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
