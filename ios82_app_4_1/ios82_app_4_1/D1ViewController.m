//
//  D1ViewController.m
//  ios82_app_4_1
//
//  Created by ying xu on 15/9/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "D1ViewController.h"

@interface D1ViewController ()

@end

@implementation D1ViewController
- (IBAction)tapB:(id)sender
{
    UIStoryboard * s = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UIViewController * vc = [s instantiateViewControllerWithIdentifier:@"D2ViewController"];
    
    [self.navigationController pushViewController:vc animated:YES];
    
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
