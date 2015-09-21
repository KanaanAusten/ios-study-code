//
//  T2ViewController.m
//  ios82_app_6_2
//
//  Created by ying xu on 15/9/15.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T2ViewController.h"

#import "AFNetworking.h"

#define postWeiboURL @"https://api.weibo.com/2/statuses/update.json"

#define postImageWeiboURL @"https://upload.api.weibo.com/2/statuses/upload.json"

#define token @"XXXXXX"

@interface T2ViewController ()

@property(nonatomic,strong)AFHTTPRequestOperationManager * afManager;

@end

@implementation T2ViewController

- (IBAction)tapUploadFile:(id)sender
{
    NSDictionary * dic = @{@"access_token":token,@"status":@"ios82weiboTestImage"};
    
    [self.afManager POST:postImageWeiboURL parameters:dic constructingBodyWithBlock:^void(id<AFMultipartFormData> formData) {
        
        NSString * path = [[NSBundle mainBundle] pathForResource:@"1" ofType:@"png"];
        
        
        [formData appendPartWithFileURL:[NSURL fileURLWithPath:path] name:@"pic" error:nil];
        
    } success:^void(AFHTTPRequestOperation * op, NSData * data) {
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",dic);
    } failure:^void(AFHTTPRequestOperation * op, NSError * error) {
        nil;
    }];
    
}


- (IBAction)tapB:(id)sender
{
    NSDictionary * dic = @{@"access_token":token,@"status":@"ios82weiboTestImage"};
    
    [self.afManager POST:postWeiboURL parameters:dic success:^void(AFHTTPRequestOperation * op, NSData * data) {
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        NSLog(@"%@",dic);
        
    } failure:^void(AFHTTPRequestOperation * op , NSError * error) {
        ;
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.afManager = [[AFHTTPRequestOperationManager alloc]init];
    self.afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
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
