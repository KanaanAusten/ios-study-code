//
//  GCDViewController.m
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "GCDViewController.h"

@interface GCDViewController ()

@property (strong, nonatomic) IBOutlet UIProgressView *progeressView;


@end

@implementation GCDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark 点击button更新进度条
- (IBAction)tapBtn:(id)sender
{
    // 获取一个始终可用的全局队列
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    dispatch_async(queue, ^{
        self.progeressView.progress = 0;
        for (int i = 0; i < 100; i++)
        {
            [NSThread sleepForTimeInterval:0.2f];
            // 获取当前主队列
            dispatch_async(dispatch_get_main_queue(), ^{
                self.progeressView.progress += 0.01;
            });
        }
    });
    
    
    

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
