//
//  ViewController.m
//  ios82_App_1_2
//
//  Created by ying xu on 15/8/24.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *aView;

@end

@implementation ViewController

/*
 The UIResponder class does not store or set the next responder automatically, instead returning nil by default. Subclasses must override this method to set the next responder. UIView implements this method by returning the UIViewController object that manages it (if it has one) or its superview (if it doesn’t); UIViewController implements the method by returning its view’s superview; UIWindow returns the application object, and UIApplication returns nil.
 */







//1，视图加载完成
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
    //常用属性
    self.view;
    
    self.navigationController;//自动赋值
    self.navigationItem;//手动赋值
    
    self.tabBarController;//自动赋值
    self.tabBarItem;//手动赋值
    
    //获取视图方向
    self.interfaceOrientation;
    
    
    
    //1,可视化属性
    UIView * v1;
    UIView * v2;
    v1.backgroundColor;
    
    v1.subviews;
    
    //2,视图层次
    [self.view addSubview:v1];
    [self.view addSubview:v2];
    
    self.view.subviews;
    
    [self.view bringSubviewToFront:v1];
    [self.view sendSubviewToBack:v1];
    [self.view insertSubview:v2 atIndex:0];
    */
    //3，视图过度动画
    
    UIScrollView * s = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:s];
    
    UIImageView * imageV = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"123.png"]];
    
    s.contentSize = imageV.frame.size;
    
    [s addSubview:imageV];
    
    //偏移量
    s.contentOffset;
    
    
    /*
    UIWebView * w = [[UIWebView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:w];
    
    NSURL * url = [NSURL URLWithString:@"http://www.taobao.com"];
    NSURLRequest * r = [NSURLRequest requestWithURL:url];
    [w loadRequest:r];
    */
    
    
    
    //[v removeFromSuperview];
    
    
    
}

- (IBAction)tapB:(id)sender
{

    
    [UIView animateWithDuration:3 animations:^{
        self.aView.backgroundColor = [UIColor greenColor];
      //  self.aView.alpha = 0;
        
       // self.aView.center = CGPointMake(0, 0);
        //平移，缩放，旋转
       // self.aView.transform = CGAffineTransformMakeRotation(3.14/4);
        
       CGAffineTransform t= CGAffineTransformMakeTranslation(100, 100);
        
        CGAffineTransform t1 =CGAffineTransformMakeRotation(3.14/4);
        CGAffineTransform t2 =CGAffineTransformMakeScale(2, 0.5);
        CGAffineTransform t3 = CGAffineTransformConcat(t2, t1);
        
        CGAffineTransform t4 =CGAffineTransformConcat(t3,t);
        
        
        self.aView.transform = t4;
        
        
    }];
    
    
}

/*
//2,初始化方法
//代码初始化
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    //入，该视图控制器类和storyboard中某个可视化控制器绑定，该方法不会运行。
}
//storyboard初始化
-(void)awakeFromNib
{
    //通过纯代码创建一个视图控制器对象，该方法不会走。
}

//3,加载根视图
-(void)loadView
{
    //此方法，只做一件事
    //为self.view属性赋值
}
*/

//2，视图切换时间点

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    
}
-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    
}

//3,清除临时数据
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}

@end
