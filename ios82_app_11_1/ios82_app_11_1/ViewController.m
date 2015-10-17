//
//  ViewController.m
//  ios82_app_11_1
//
//  Created by ying xu on 15/10/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import <AVFoundation/AVFoundation.h>

#import <MediaPlayer/MediaPlayer.h>

@interface ViewController ()

@property(nonatomic,strong)MPMoviePlayerViewController * playerVC;

@end

@implementation ViewController

- (IBAction)tapB:(id)sender
{
    [self presentMoviePlayerViewControllerAnimated:self.playerVC];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    /*
    NSString * path = [[NSBundle mainBundle] pathForResource:@"123" ofType:@"mp4"];
    
    
    self.playerVC = [[MPMoviePlayerViewController alloc]initWithContentURL:[NSURL fileURLWithPath:path]];
    
    */
    
    
    
    
//    //播放
//    AVAudioPlayer * p;
//    
//    //录音
    AVAudioRecorder * r;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
