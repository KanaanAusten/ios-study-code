//
//  ViewController.m
//  ttt
//
//  Created by ying xu on 15/9/18.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "User.h"

#import "Entity.h"


@interface ViewController ()

@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

@implementation ViewController

- (IBAction)tapSave:(id)sender
{
    User * u = [[User alloc]init];
    u.uid = @"123";
    
//    NSData * d = [NSKeyedArchiver archivedDataWithRootObject:u];
//    
//    
//    User * u1 = [NSKeyedUnarchiver unarchiveObjectWithData:d];
    
    
    
    
    
    
    Entity * e = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([Entity class]) inManagedObjectContext:self.managedObjectContext];
    
    [e setUser:u];
    
    NSError * error;
    
    if (![self.managedObjectContext save:&error])
    {
        NSLog(@"%@",error.localizedDescription);
        return;
    }
}

- (IBAction)tapFind:(id)sender
{
        //1,查询请求
    
    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([Entity class])];
    

    NSError * error;
    NSArray * result = [self.managedObjectContext executeFetchRequest:request error:&error];
    if (result == nil)
    {
        NSLog(@"%@",error.localizedDescription);
        return ;
    }
    
    
    Entity * e = result.lastObject;
    
    User * u = e.user;
    
    NSLog(@"uid = %@",u.uid);
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
