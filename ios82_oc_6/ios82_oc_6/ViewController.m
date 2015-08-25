//
//  ViewController.m
//  ios82_oc_6
//
//  Created by ying xu on 15/8/11.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"
#import "Light.h"

@interface ViewController ()

@property(nonatomic,strong)UIButton * buttonA;
-(void)tapA;
@property(nonatomic,strong)UIButton * buttonB;
-(void)tapB;
@property(nonatomic,strong)Light * light;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.light = [[Light alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    [self.view addSubview:self.light];
    [self.light turnOn];
    
    
    
    
    self.buttonA = [[UIButton alloc]init];
    self.buttonA.frame = CGRectMake(50, 50, 100, 50);
    self.buttonA.backgroundColor = [UIColor redColor];
    //为了让buttonA显示在屏幕上
    [self.view addSubview:self.buttonA];
    
    [self.buttonA addTarget:self action:@selector(tapA) forControlEvents:UIControlEventTouchUpInside];
    
    self.buttonB = [[UIButton alloc]init];
    self.buttonB.frame = CGRectMake(50, 200, 100, 50);
    self.buttonB.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.buttonB];
     
    [self.buttonB addTarget:self action:@selector(tapB) forControlEvents:UIControlEventTouchUpInside];
    
}

-(void)tapA
{
    [self.light turnOn];
}

-(void)tapB
{
    [self.light turnOff];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
