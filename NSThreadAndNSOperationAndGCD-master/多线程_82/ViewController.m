//
//  ViewController.m
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (strong, nonatomic) IBOutlet UIProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark 创建线程的三种方法
- (IBAction)tapBtn:(id)sender
{
    // 方式一
    NSThread *one = [[NSThread alloc] initWithTarget:self selector:@selector(doWork) object:nil];
    // 此方法必须要手动启动线程
    [one start];
    
    // 方式二
    [NSThread detachNewThreadSelector:@selector(doWork) toTarget:self withObject:nil];// 不用手动启动
    
    // 方式三
    [self performSelectorInBackground:@selector(doWork) withObject:@"线程4"];// 不需要手动启动
    
}

#pragma mark 子线程触发的事件
- (void)doWork
{
    for (int i = 0; i <= 15000; i++)
    {
        NSLog(@"当前线程:%@,i = %d",[NSThread currentThread],i);
        if (i == 15000)
        {
            NSLog(@"主线程:%@",[NSThread mainThread]);
        }
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

#pragma mark 更新进度条
- (IBAction)tapUpdadeBtn:(id)sender
{
//    for (int i = 0; i < 100; i++)
//    {
//        self.progressView.progress += 0.001;
//    }
    
    [self performSelectorInBackground:@selector(updatePreogressView) withObject:nil];
}

- (void)updatePreogressView
{
    self.progressView.progress = 0;
    for (int i = 0; i < 100; i++)
    {
        // 让当前线程休眠0.2秒，（为了可以看出效果）
        [NSThread sleepForTimeInterval:0.2f];
        // 通知之线程更新UI
        [self performSelectorOnMainThread:@selector(updateUI) withObject:nil waitUntilDone:YES];
//        self.progressView.progress += i;
    }
}

// 通知主线程更新UI
- (void)updateUI
{
    self.progressView.progress += 0.01;
}


#pragma mark 多线程取钱问题(同步线程)
- (IBAction)tapFetchMoneyBtn:(id)sender
{
    // 创建线程
    [NSThread detachNewThreadSelector:@selector(fetchMoney:) toTarget:self withObject:@"我"];
    
    [self performSelectorInBackground:@selector(fetchMoney:) withObject:@"妈妈"];
}

// 取钱方法
- (void)fetchMoney:(NSString *)who
{
    
    // 设置线程同步，解决线程混乱问题
    @synchronized(self)
    {
        static int money = 10000;
        NSLog(@"%@来取钱，此时余额为%d",who,money);
        money -= 2000;
        NSLog(@"%@取完钱啦，此时余额为%d",who,money);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
