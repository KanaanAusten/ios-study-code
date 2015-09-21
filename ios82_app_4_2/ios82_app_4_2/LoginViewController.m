//
//  LoginViewController.m
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "LoginViewController.h"

#import "UserManager.h"

@interface LoginViewController ()
@property (strong, nonatomic) IBOutlet UITextField *userNameT;
@property (strong, nonatomic) IBOutlet UITextField *passWordT;
@property (strong, nonatomic) IBOutlet UIImageView *launchImageView;


@property(nonatomic,strong)UserManager * userM;

@end

@implementation LoginViewController

- (IBAction)tapB:(id)sender
{
    [self.userM loginWithName:self.userNameT.text PassWord:self.passWordT.text];
    
    UIViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Main"];
    
    [self presentViewController:vc animated:NO completion:^{
        ;
    }];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.userM = [UserManager share];
    
    if ([self.userM isLogin] == NO)
    {
        self.launchImageView.hidden = YES;
    }
    else
    {
        //此处检测是否有广告
    }
    
}


-(void)viewDidAppear:(BOOL)animated
{
    if ([self.userM isLogin])
    {
        UIViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Main"];
        
        [self presentViewController:vc animated:NO completion:^{
            self.launchImageView.hidden = YES;
        }];
        
        
    }
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
