//
//  BViewController.m
//  progressView、activityIndicator
//
//  Created by ying xu on 15/8/20.
//  Copyright (c) 2015年 ibokan. All rights reserved.
//

#import "BViewController.h"

#import "SourceManager_B.h"



@interface BViewController ()

@property(nonatomic,strong)UIImageView * imageView;
@property(nonatomic,strong)UIProgressView * progressView;
@property(nonatomic,strong)UIActivityIndicatorView * actView;
@property(nonatomic,strong)UIButton * button;
-(void)tapB;

@property(nonatomic,strong)SourceManager_B * sourceM;



@end

@implementation BViewController

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

    
    self.button = [UIButton buttonWithType:UIButtonTypeSystem];
    self.button.frame = CGRectMake(100, 350, 60, 30);
    [self.button setTitle:@"下载" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(tapB) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    
    self.sourceM = [[SourceManager_B alloc]init];
    
    
    __weak __block BViewController * copy_self = self;
    
    self.sourceM.didReceiveDataBlockHandle = ^(float didLoad,float allLoad){
        double p = didLoad/allLoad;
        
        copy_self.progressView.progress = p;
    };
    
    self.sourceM.didFinishBlockHandle = ^(UIImage * image){
        [copy_self.actView stopAnimating];
        
        copy_self.imageView.image = image;
    };
}

-(void)tapB
{
    [self.sourceM startDownload];
    [self.actView startAnimating];
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
