//
//  ViewController.m
//  ios82_app_8_1
//
//  Created by ying xu on 15/9/24.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "TestV.h"

#import "TouchView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /*
    TestV * t = [[TestV alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    t.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:t];
    
    CGPoint p = CGPointMake(10, 10);
    
    NSValue * v = [NSValue valueWithCGPoint:p];
    
    CGPoint p1 = [v CGPointValue];
    
    
    NSNumber * n = [NSNumber numberWithInt:10];

     */
    
    TouchView * tv = [[TouchView alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    tv.backgroundColor = [UIColor grayColor];
    [self.view addSubview:tv];
    

    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
