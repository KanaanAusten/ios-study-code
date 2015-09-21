//
//  ViewController.m
//  ios82_app_4_2
//
//  Created by ying xu on 15/9/7.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "ADManager.h"

@interface ViewController ()
{
    int _timerCount;
}

@property(nonatomic,strong)NSTimer * timer;
@property (strong, nonatomic) IBOutlet UIButton *button;


@property(nonatomic,strong)ADManager * adM;

@property (strong, nonatomic) IBOutlet UIImageView *adImageView;

@property (strong, nonatomic) IBOutlet UIImageView *launchImageView;

@end

@implementation ViewController
- (IBAction)tapB:(id)sender
{
    [self.timer invalidate];
    
    UIViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarVC"];
    
    [self presentViewController:vc animated:NO completion:^{
        ;
    }];
}

-(void)viewDidAppear:(BOOL)animated
{
    
    if ([self.adM isHasAD] == NO)
    {
        
        UIViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarVC"];
        
        [self presentViewController:vc animated:NO completion:^{
            ;
        }];
    }
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.adM = [ADManager share];
    
    self.adImageView.image = nil;
    
    if ([self.adM isHasAD])
    {
        
        NSLog(@"有广告");
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(endTimer) userInfo:nil repeats:YES];
        _timerCount = 0;
        
        self.adImageView.hidden = NO;
        self.launchImageView.hidden = YES;
        
        self.adImageView.image = [self.adM adImage];
         
    }
    else
    {
        NSLog(@"没有广告");
        self.adImageView.hidden = YES;
        self.launchImageView.hidden = NO;
    }
    
    
    //Attempt to present <UITabBarController: 0x7ff8cb71c000> on <ViewController: 0x7ff8cb4c5460> whose view is not in the window hierarchy!
    
    
    
}

-(void)endTimer
{
    
    
    if (_timerCount == 3)
    {
        [self.timer invalidate];
        
        UIViewController * vc = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarVC"];
        
        [self presentViewController:vc animated:NO completion:^{
            ;
        }];
        
    }
    
    NSString * str = [NSString stringWithFormat:@"%d秒钟后自动跳过",3-_timerCount];
    [self.button setTitle:str forState:UIControlStateNormal];
    
    
    
    _timerCount++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
