//
//  SViewController.m
//  ios82_app_4_1
//
//  Created by ying xu on 15/9/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "SViewController.h"

@interface SViewController ()

@end

@implementation SViewController
- (IBAction)tapB:(id)sender
{
    [self dismissViewControllerAnimated:NO completion:^{
        ;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor  = [UIColor grayColor];
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
