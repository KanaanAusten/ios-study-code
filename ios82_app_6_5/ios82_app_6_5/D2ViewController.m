//
//  D2ViewController.m
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "D2ViewController.h"

#import "CountManager.h"

@interface D2ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *tf;

@property(nonatomic,strong)CountManager * countM;

@end

@implementation D2ViewController

- (IBAction)tapB:(id)sender
{
    self.countM.count = self.tf.text;
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.countM = [CountManager share];
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
