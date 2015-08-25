//
//  TViewController.m
//  progressView、activityIndicator
//
//  Created by ying xu on 15/8/20.
//  Copyright (c) 2015年 ibokan. All rights reserved.
//

#import "TViewController.h"

#import "SourceManager_D.h"


@interface TViewController ()<SourceManagerDelegate>

@property(nonatomic,strong)UIImageView * imageView;
@property(nonatomic,strong)UIProgressView * progressView;
@property(nonatomic,strong)UIActivityIndicatorView * actView;
@property(nonatomic,strong)UIButton * button;
-(void)tapB;

@property(nonatomic,strong)SourceManager_D * sourceM;

@end

@implementation TViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.imageView  = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 200, 200)];
    self.imageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:self.imageView];
    
    self.actView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    self.actView.frame = CGRectMake(100, 100, 40, 40);
    [self.view addSubview:self.actView];
    
    self.progressView = [[UIProgressView alloc]initWithProgressViewStyle:UIProgressViewStyleDefault];
    self.progressView.frame = CGRectMake(50, 300, 200, 40);
    
    [self.view addSubview:self.progressView];
    
    self.sourceM = [[SourceManager_D alloc]init];
    self.sourceM.delegate = self;
    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.frame = CGRectMake(100, 350, 60, 30);
    [self.button setTitle:@"下载" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(tapB) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
 
}

-(void)tapB
{
    [self.sourceM startDownload];
    [self.actView startAnimating];
}


-(void)sourceManager:(SourceManager_D *)sm_d didFinishWithImage:(UIImage *)image
{
    [self.actView stopAnimating];
    
    self.imageView.image = image;
    
}

-(void)sourceManager:(SourceManager_D *)sm_d didReceiveDataLength:(float)didLoad allDown:(float)allLoad
{
    double p = didLoad/allLoad;
    
    self.progressView.progress = p;
    
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
