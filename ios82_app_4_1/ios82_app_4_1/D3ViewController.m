//
//  D3ViewController.m
//  ios82_app_4_1
//
//  Created by ying xu on 15/9/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "D3ViewController.h"

@interface D3ViewController ()

@end

@implementation D3ViewController

- (IBAction)backD2:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)backD1:(id)sender
{
    
//    UIStoryboard * s = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    UIViewController * vc = [s instantiateViewControllerWithIdentifier:@"D2ViewController.h"];
    
    
    UIViewController * vc = self.navigationController.viewControllers[2];
    
    [self.navigationController popToViewController:vc animated:YES];
}

- (IBAction)backRoot:(id)sender
{
    [self.navigationController popToRootViewControllerAnimated:YES];
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
