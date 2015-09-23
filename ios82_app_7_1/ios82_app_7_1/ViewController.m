//
//  ViewController.m
//  ios82_app_7_1
//
//  Created by ying xu on 15/9/22.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "KeyBoard.h"

#import "PINKeyBoard.h"

@interface ViewController ()<PINKeyBoardDelegate>

@property (strong, nonatomic) IBOutlet KeyBoard *kb;

@property (strong, nonatomic) PINKeyBoard * v;

-(void)tapKB:(KeyBoard *)kb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSArray *views = [[NSBundle mainBundle] loadNibNamed:@"PINKB" owner:nil options:nil];

    
    
    PINKeyBoard * v = views.lastObject;
    
    v.delegate = self;
//    v.target = self;
//    v.action = @selector(pinKB);
    
    [self.view addSubview:v];
    
    self.v = v;
    
    
    
//    self.kb.target = self;
//    self.kb.action = @selector(tapKB:);
    
   // UIView * aV = [UIView alloc]initWithFrame:<#(CGRect)#>
    
    
    
//    KeyBoard * kb = [[KeyBoard alloc]initWithFrame:CGRectMake(50, 20, 300, 300)];
//    
//    kb.backgroundColor = [UIColor grayColor];
//    [self.view addSubview:kb];
    
    UIAlertView * c;
}

-(void)pinKeyBoard:(PINKeyBoard *)kb didFinishPassword:(NSString *)pw
{
    NSLog(@"Delegate回调的密码%@",pw);
}

-(void)pinKB
{
    NSString * pw = self.v.password;
    NSLog(@"%@",pw);
}

-(void)tapKB:(KeyBoard *)kb
{
    NSLog(@"vc收到kb中A按钮点击三次的事件");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
