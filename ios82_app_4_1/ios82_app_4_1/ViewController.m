//
//  ViewController.m
//  ios82_app_4_1
//
//  Created by ying xu on 15/9/6.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)tapB:(id)sender
{
    //1,通过storyboard文件创建一个storyboard对象
    
    UIStoryboard * s = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController * vc1 = [s instantiateViewControllerWithIdentifier:@"D1ViewController"];
    
    
    [self.navigationController pushViewController:vc1 animated:YES];
    
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
