//
//  ViewController.m
//  ios82_app_6_2
//
//  Created by ying xu on 15/9/15.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "AFNetworking.h"

#define imageURL @"http://xuyingtest-xuyingttt.stor.sinaapp.com/1234.png"

//SDK提供，制作相对复杂
#import "ComputerOP.h"

//自己根据业务编写，制作相对简单
#import "JiaFa.h"


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIProgressView *progressView;

@property(nonatomic,strong)AFHTTPRequestOperationManager * afManager;


@end

@implementation ViewController

- (IBAction)tapB:(id)sender
{
    
    
    
    __block __weak ViewController * copy_self = self;
    
   AFHTTPRequestOperation * op = [self.afManager GET:imageURL parameters:nil success:^void(AFHTTPRequestOperation * op, NSData * data) {
       
       UIImage * image = [UIImage imageWithData:data];
        copy_self.imageView.image = image;
    } failure:^void(AFHTTPRequestOperation * op, NSError * error) {
        NSLog(@"%@",error.localizedDescription);
    }];
    
    [op setDownloadProgressBlock:^void(NSUInteger bytesRead, long long totalBytesRead, long long totalBytesExpectedToRead) {
        double p = (double)totalBytesRead/totalBytesExpectedToRead;
        copy_self.progressView.progress = p;
    }];
    
    
    
    /*
    ComputerOP * op = [[ComputerOP alloc]init];
    op.a = 2;
    op.b = 3;
    
    JiaFa * jf = [[JiaFa alloc]init];
    
    op.jisuanfaze = jf;
    
    double t = [op jisuan];
    NSLog(@"t = %g",t);
     */
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.afManager = [[AFHTTPRequestOperationManager alloc]init];
    
    //关闭自动处理功能
    self.afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
  
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
