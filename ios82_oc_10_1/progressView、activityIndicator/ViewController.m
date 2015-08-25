//
//  ViewController.m
//  progressView、activityIndicator
//
//  Created by ibokan on 14/12/24.
//  Copyright (c) 2014年 ibokan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(strong, nonatomic) UIActivityIndicatorView *activityIndicatorView;
@property(strong, nonatomic) UIImageView * imageView;
@property(strong, nonatomic) UIProgressView * progressView;
@property(strong, nonatomic) UIButton * button;
@property(strong, nonatomic) SourceManager_D * sm_d;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(119, 421, 83, 38);
    [self.button setTitle:@"下载" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.button.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.button addTarget:self action:@selector(tapButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    self.activityIndicatorView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    
    self.activityIndicatorView.frame = CGRectMake(142, 100, 37, 37);
    self.activityIndicatorView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.activityIndicatorView.hidesWhenStopped = YES;
    
    
    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(40, 141, 240, 152)];
    [self.view addSubview:self.imageView];
    
    self.progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(40, 358, 240, 2)];
    self.progressView.progress = 0;
    [self.view addSubview:self.progressView];
    
    self.sm_d = [[SourceManager_D alloc]init];
    self.sm_d.delegate = self;
    
    [self.view addSubview:self.activityIndicatorView];
}

- (void)tapButton
{
    [self.activityIndicatorView startAnimating];
    [self.sm_d startDownload];
}



-(void)sourceManager:(SourceManager_D *)sm_d didReceiveDataLength:(float)didLoad allDown:(float)allLoad
{
    double i = didLoad / allLoad;
    self.progressView.progress = i;
}


-(void)sourceManager:(SourceManager_D *)sm_d didFinishWithImage:(UIImage *)image
{
    [self.activityIndicatorView stopAnimating];
    [self.imageView setImage:image];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
