//
//  T1ViewController.m
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/30.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T1ViewController.h"

#import "XYTextView.h"

#import "T1Manager.h"

@interface T1ViewController ()

@property (strong, nonatomic) IBOutlet XYTextView *xyTV;

@property(nonatomic,strong)T1Manager * manager;


@end

@implementation T1ViewController

- (IBAction)tapC:(id)sender
{
    [self.xyTV qiehuanKeyBoard];
}


- (IBAction)tapSend:(id)sender
{
    NSString * text = self.xyTV.text;
   [self.manager sendText:text BlockHandle:^(BOOL isSuccess) {
       ;
   }];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
   // self.manager = [T1Manager share];
    
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
