//
//  T1ViewController.m
//  ios82_app_3_2
//
//  Created by ying xu on 15/9/1.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T1ViewController.h"

#import "WZNews.h"
#import "TPNews.h"



@interface T1ViewController ()

@property(nonatomic,strong)NSArray * items;

@end

@implementation T1ViewController


-(void)loadShuju
{
    WZNews * n1 = [[WZNews alloc]init];
    
    n1.title = @"tttt";
    n1.subTitle = @"aaaaa";
    
    WZNews * n2 = [[WZNews alloc]init];
    
    n2.title = @"xxxxxx";
    n2.subTitle = @"bbbbbb";
    
    
    TPNews * n3 = [[TPNews alloc]init];
    n3.a = [UIImage imageNamed:@"1"];
    n3.b = [UIImage imageNamed:@"1"];
    n3.c = [UIImage imageNamed:@"1"];
    
    TPNews * n4 = [[TPNews alloc]init];
    n4.a = [UIImage imageNamed:@"2"];
    n4.b = [UIImage imageNamed:@"2"];
    n4.c = [UIImage imageNamed:@"2"];
    
    
    self.items = @[n1,n3,n2,n4];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
