
//
//  SlideViewController.m
//  侧滑0922
//
//  Created by mac on 15/9/22.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "SlideViewController.h"
#define OfSetX 100
#define Menu_Image @"menu-button"
@interface SlideViewController ()<UINavigationControllerDelegate>

@property (assign, nonatomic) float lastX;

@property (assign, nonatomic) float  halfX;

@property (strong, nonatomic)UIPanGestureRecognizer *panGestureRecognizer;

@property (strong, nonatomic)UITapGestureRecognizer * tapGestureRecognizer;

@end

@implementation SlideViewController

static SlideViewController * slideViewController;

+(instancetype)share
{
    return slideViewController;
}

-(void)awakeFromNib
{
    [self setup];
}
-(instancetype)init
{
    if (self =[super init]) {
        
         [self setup];
    }
    
    return self;
}

-(instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    if (self =[super initWithRootViewController:rootViewController]) {
        
         [self setup];
    }
    return self;
}


-(void)setup
{
     // 把self 赋给 slideViewController 为了 share方法每次拿到的都是同一个SlideViewController
    slideViewController = self;
    self.delegate =self;
    self.view.layer.shadowColor =[UIColor blackColor].CGColor;
    self.view.layer.shadowOpacity = 1;
    self.view.layer.shadowRadius = 5;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    float width =[UIScreen mainScreen].bounds.size.width;
    self.halfX = (width-OfSetX)/2;
   
}

-(void)changeOutSideViewFrame:(UIPanGestureRecognizer *)sender
{
  
    
    if (sender.state == UIGestureRecognizerStateBegan) {
        
        self.lastX = sender.view.frame.origin.x;
    }
    
    // point.x  手指横向滑动的距离
    CGPoint point =[sender  translationInView:sender.view];
    
    CGRect frame = sender.view.frame;
    frame.origin.x = self.lastX + point.x;
    sender.view.frame = frame;
    
    NSLog(@"sender.view.frame.x =%f",sender.view.frame.origin.x);
    NSLog(@"point.x = %f  point.y = %f",point.x,point.y);
    
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        
        
        if (point.x < self.halfX) {
            
            // 小于设置滑动的距离 不发生侧滑
            frame.origin.x = 0;
            [self.topViewController.view removeGestureRecognizer:self.tapGestureRecognizer];
        }
        else
        {
            // 发生侧滑
            
            frame.origin.x = self.halfX*2;
            [self addTapGestureRecognizer];
            
        }
        
        // 给侧滑加一个短时动画
        [UIView animateWithDuration:0.5 animations:^{
            
            sender.view.frame = frame;
        }];
        
    }
    
    // 将底层视图插入到当前window的最下层
    
    [self.view.window insertSubview:self.leftMenu.view atIndex:0];
    
    
}


// navgationcontroller 中视图将要显示的回调
-(void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
      // 如果遵守SlideViewControllerDelegate 并SlideViewControllerCanLeft 返回YES   可以发生侧滑 并在当前viewController添加侧滑按钮
    if ([viewController respondsToSelector:@selector(SlideViewControllerCanLeft)]&&  [(UIViewController <SlideViewControllerDelegate> *)viewController  SlideViewControllerCanLeft]) {
       
    
            _panGestureRecognizer =[[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(changeOutSideViewFrame:)];
            [self.view addGestureRecognizer:_panGestureRecognizer];
        
        UIImage * image =[[UIImage imageNamed:Menu_Image]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
            viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(changeViewFrame)];
    }
    else
    {
         // 移除侧滑手势
        [self.view removeGestureRecognizer:_panGestureRecognizer];
    }
    
    
}

-(void)changeViewFrame
{
    CGRect frame = self.view.frame;
    if (frame.origin.x == 0) {
        
        frame.origin.x = self.halfX *2;
        [self addTapGestureRecognizer];
    }
    else
    {
        frame.origin.x = 0;
        
        [self.topViewController.view removeGestureRecognizer:self.tapGestureRecognizer];
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        
        self.view.frame = frame;
    }];
    
    [self.view.window insertSubview:self.leftMenu.view atIndex:0];
    
}
-(void)addTapGestureRecognizer
{
    self.tapGestureRecognizer =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(changeViewFrame)];
    [self.topViewController.view addGestureRecognizer:self.tapGestureRecognizer];
    
}

// 由底层页点击滑动到目标页
-(void)switchToViewController:(UIViewController *)viewController withCompletion:(void(^)())completion
{
    [UIView animateWithDuration:0.3 animations:^{
        
        self.view.frame = self.view.bounds;
    }];
    
    [self popToRootViewControllerAnimated:NO];
    [self pushViewController:viewController animated:NO];
    
    if (completion) {
        completion();
    }
    
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.view.frame.origin.x == 0) {
        
        [super pushViewController:viewController animated:animated];
    }
    else
    {
        [UIView animateWithDuration:0.3 animations:^{
            
            self.view.frame = self.view.bounds;
        }];
        
        [self popToRootViewControllerAnimated:NO];
        [self pushViewController:viewController animated:NO];
    }
}

-(NSArray *)popToRootViewControllerAnimated:(BOOL)animated
{
    
    if (self.view.frame.origin.x == 0) {
        
        return  [super popToRootViewControllerAnimated:animated];
        
    }
    else
    {
      
        [UIView animateWithDuration:0.3 animations:^{
            
             self.view.frame = self.view.bounds;

        } completion:^(BOOL finished) {
           
         [super popToRootViewControllerAnimated:animated];
        }];
            
        
       
    }
    
    return nil;
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
