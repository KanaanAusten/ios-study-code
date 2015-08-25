//
//  ViewController.m
//  ios82_app_1_1
//
//  Created by ying xu on 15/8/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    int _time;

}
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UIButton *button;


@property(nonatomic,strong)NSTimer * timer;
-(void)receiveTime;

@end

@implementation ViewController

- (IBAction)tapB
{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(receiveTime) userInfo:nil repeats:YES];
    
    
}

- (IBAction)stop
{
    [self.timer invalidate];
}

- (IBAction)clear
{
    [self.timer invalidate];
    _time = 0;
    
    self.label.text = [NSString stringWithFormat:@"%d",_time];
}

-(void)receiveTime
{
    _time ++;
    
    self.label.text = [NSString stringWithFormat:@"%d",_time];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
