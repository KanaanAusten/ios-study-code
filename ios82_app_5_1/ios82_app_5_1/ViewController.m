//
//  ViewController.m
//  ios82_app_5_1
//
//  Created by ying xu on 15/9/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>
#import "CoreDataManager.h"

#import "Student.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nameT;
@property (strong, nonatomic) IBOutlet UITextField *ageT;

@property(nonatomic,strong)NSManagedObjectContext * context;

@end

@implementation ViewController
- (IBAction)tapB:(id)sender
{
    //增
    Student * s = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([Student class]) inManagedObjectContext:self.context];
    
    //改
    s.name = self.nameT.text;
    s.age = self.ageT.text;
    
    NSError * error;
    
    if (![self.context save:&error])
    {
        NSLog(@"%@",error.localizedDescription);
        return;
    }
    
    
}
- (IBAction)tapDel:(id)sender
{
            //1,查询请求
        
    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([Student class])];
        
        //添加排序规则
        
    NSSortDescriptor * sortD = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
        [request setSortDescriptors:@[sortD]];
        
        //添加谓词进行筛选
        
        NSPredicate * predicate = [NSPredicate predicateWithFormat:@"age = 20"];
       // [request setPredicate:predicate];

        NSError * error;
        NSArray * result = [self.context executeFetchRequest:request error:&error];
        if (request == nil)
        {
            NSLog(@"%@",error.localizedDescription);
            return ;
        }
        
      //  NSLog(@"%@",result);
    
    if (result.lastObject)
    {
        [self.context deleteObject:result.lastObject];
    }
    

    if (![self.context save:&error])
    {
        NSLog(@"%@",error.localizedDescription);
        return;
    }
    
}

- (IBAction)tapF:(id)sender
{
    //1,查询请求
    
    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([Student class])];
    
    //添加排序规则
    
    NSSortDescriptor * sortD = [NSSortDescriptor sortDescriptorWithKey:@"age" ascending:YES];
    [request setSortDescriptors:@[sortD]];
    
    //添加谓词进行筛选
    
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"age = 20"];
   // [request setPredicate:predicate];

    NSError * error;
    NSArray * result = [self.context executeFetchRequest:request error:&error];
    if (request == nil)
    {
        NSLog(@"%@",error.localizedDescription);
        return ;
    }
    
    NSLog(@"%@",result);
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    CoreDataManager * m = [CoreDataManager share];
    self.context = m.context;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
