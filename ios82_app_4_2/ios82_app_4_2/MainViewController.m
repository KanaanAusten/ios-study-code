//
//  MainViewController.m
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "MainViewController.h"

#import "UserManager.h"

@interface MainViewController ()

@property(nonatomic,strong)UserManager * userM;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.userM = [UserManager share];
}
- (IBAction)tapB:(id)sender
{
    [self.userM logout];
    [self dismissViewControllerAnimated:NO completion:^{
        ;
    }];
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
