//
//  NSOperationViewController.m
//  多线程_82
//
//  Created by Roberts on 15/10/15.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "NSOperationViewController.h"
#import "MyOperation.h"
#import "MyProgressView.h"
#import "FetchMoney.h"

@interface NSOperationViewController ()



@end

@implementation NSOperationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

#pragma mark 创建操作
- (IBAction)tapBtn1:(id)sender
{
    // 创建操作
    MyOperation *operation1 = [MyOperation new];
    operation1.myName = @"操作1";
    
    MyOperation *operation2 = [MyOperation new];
    operation2.myName = @"操作2";
    
    MyOperation *operation3 = [MyOperation new];
    operation3.myName = @"操作3";
    
    MyOperation *operation4 = [MyOperation new];
    operation4.myName = @"操作4";
    
    MyOperation *operation5 = [MyOperation new];
    operation5.myName = @"操作5";

    
    // 将创建的所有操作加入到操作队列中
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    queue.maxConcurrentOperationCount = 1;// 此方法必须写在加入操作队列之前
    [operation5 setQueuePriority:NSOperationQueuePriorityVeryHigh];
    // 提升操作的优先级
    [operation4 setQueuePriority:NSOperationQueuePriorityHigh];
    
    // 设置依赖,如果设置依赖的同时提升了优先级，则会一设置的依赖为准
    [operation4 addDependency:operation5];
    
    // join
    [queue addOperation:operation1];
    [queue addOperation:operation2];
    [queue addOperation:operation3];
    [queue addOperation:operation4];
    [queue addOperation:operation5];
    
}


#pragma mark 操作队列更新进度条
- (IBAction)tapBtn2:(id)sender
{
    // 创建操作并且将创建的操作加入到操作队列中
    MyProgressView *myProgress = [MyProgressView new];
    
    // 指定委托
    myProgress.myDelegate = self;
    
    // 创建操作队列
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    [queue addOperation:myProgress];
}



- (IBAction)tapBtn3:(id)sender
{
    FetchMoney *one = [FetchMoney new];
    one.myName = @"哈哈";
    
    FetchMoney *two = [FetchMoney new];
    two.myName = @"呵呵";
    
    // 加入到操作队列中
    NSOperationQueue *queue = [NSOperationQueue new];
    queue.maxConcurrentOperationCount = 1;
    
    [queue addOperation:one];
    [queue addOperation:two];
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
