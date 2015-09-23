//
//  ViewController.m
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "CountManager.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *tf;

@property(nonatomic,strong)CountManager * countM;

@end

@implementation ViewController

#pragma - mark 回调方法

- (IBAction)tapB:(id)sender
{
    self.countM.count = self.tf.text;
    
    [self.countM startAdd];
    
    [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"D1ViewController"] animated:YES];
    
    
}

#pragma - mark 重写父类的方法

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.countM = [CountManager share];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
