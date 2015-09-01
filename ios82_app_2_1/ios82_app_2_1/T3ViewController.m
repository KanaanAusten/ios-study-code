//
//  T3ViewController.m
//  ios82_app_2_1
//
//  Created by ying xu on 15/8/27.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T3ViewController.h"

@interface T3ViewController ()
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *llc;

@end

@implementation T3ViewController
- (IBAction)tapB:(id)sender
{
    self.llc.constant  += 10;
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
