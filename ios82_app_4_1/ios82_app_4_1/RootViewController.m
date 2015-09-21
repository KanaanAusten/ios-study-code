//
//  RootViewController.m
//  ios82_app_4_1
//
//  Created by ying xu on 15/9/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (IBAction)tapA:(id)sender
{
    UIStoryboard * s = [UIStoryboard storyboardWithName:@"T1" bundle:nil];
    UIViewController * vc = [s instantiateViewControllerWithIdentifier:@"AViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (IBAction)tapB:(id)sender
{
    UIStoryboard * s = [UIStoryboard storyboardWithName:@"T1" bundle:nil];
    UIViewController * vc = [s instantiateViewControllerWithIdentifier:@"BViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)tapItem:(id)sender
{
    NSLog(@"111");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Root";
    
    
    UIView * aView = [[UIView alloc]initWithFrame:CGRectMake(290, 80, 20, 20)];
    aView.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:aView];
    
    

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
