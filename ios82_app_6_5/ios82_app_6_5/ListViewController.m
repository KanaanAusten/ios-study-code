//
//  ListViewController.m
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ListViewController.h"

#import "DetailViewController.h"

@interface ListViewController ()<DetailViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *tf;
@property (strong, nonatomic) IBOutlet UILabel *label;

@end

@implementation ListViewController

- (IBAction)tapB:(id)sender
{
    DetailViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"DetailViewController"];
    
    //KVC
    
   // [vc setValue:self.tf.text forKey:@"text"];
    
//    [vc setValue:self forKey:@"delegate"];
    
    vc.delegate = self;
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

-(void)didChangeText:(NSString *)text
{
    self.label.text  = text;
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
