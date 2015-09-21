//
//  ViewController.m
//  ios82_app_5_2
//
//  Created by ying xu on 15/9/9.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "TouchEvnet.h"

@interface ViewController ()

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;



@end

@implementation ViewController

- (IBAction)tast:(id)sender
{
        //1,查询请求
    
    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([TouchEvnet class])];
    
    //添加排序规则
    
    NSSortDescriptor * sortD = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:NO];
    [request setSortDescriptors:@[sortD]];
    


    NSError * error;
    NSArray * result = [self.managedObjectContext executeFetchRequest:request error:&error];
    if (request == nil)
    {
        NSLog(@"%@",error.localizedDescription);
        return ;
    }
    
    NSLog(@"%@",result);
}




- (IBAction)tapA:(UIButton *)button
{
    //1,查询请求
        
    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([TouchEvnet class])];
    
        
    //添加谓词进行筛选
    
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"name = %@",button.currentTitle];
    [request setPredicate:predicate];

    NSError * error;
    NSArray * result = [self.managedObjectContext executeFetchRequest:request error:&error];
    if (request == nil)
    {
        NSLog(@"%@",error.localizedDescription);
        return ;
    }
    
   // NSLog(@"%@",result);
    
    if (result.count)
    {
        TouchEvnet * t = result.lastObject;
        t.date = [NSDate date];

    }
    else
    {
        TouchEvnet * t = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([TouchEvnet class]) inManagedObjectContext:self.managedObjectContext];
        
        t.name = button.currentTitle;
        t.date = [NSDate date];
    }

    
    if (![self.managedObjectContext save:&error])
    {
        NSLog(@"%@",error.localizedDescription);
        return;
    }
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIApplication * app = [UIApplication sharedApplication];
    id delegate = app.delegate;
    self.managedObjectContext = [delegate managedObjectContext];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
