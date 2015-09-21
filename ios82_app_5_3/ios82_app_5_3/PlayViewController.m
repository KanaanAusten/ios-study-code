//
//  PlayViewController.m
//  ios82_app_5_3
//
//  Created by ying xu on 15/9/10.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "PlayViewController.h"

#import "TouchEvent.h"

#import "CoreDataManager.h"

@interface PlayViewController ()

@property(nonatomic,strong)NSArray * items;

@property(nonatomic,strong)NSManagedObjectContext * managedObjectcontext;

@end

@implementation PlayViewController

-(void)loadShuju
{
    NSMutableArray * arr = [NSMutableArray array];
    for (int i = 0; i<10; i++)
    {
        NSString * str = [NSString stringWithFormat:@"%d",i];
        [arr addObject:str];
    }
    self.items = [NSArray arrayWithArray:arr];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadShuju];
    
    
    self.managedObjectcontext = [CoreDataManager share].context;
    
    
    

}





#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString * t = self.items[indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = t;
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * t = self.items[indexPath.row];
        //1,查询请求
    
    NSFetchRequest * request = [NSFetchRequest fetchRequestWithEntityName:NSStringFromClass([TouchEvent class])];
    

    
    //添加谓词进行筛选
    
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"name = %@",t];
    [request setPredicate:predicate];

    NSError * error;
    NSArray * result = [self.managedObjectcontext executeFetchRequest:request error:&error];
    if (request == nil)
    {
        NSLog(@"%@",error.localizedDescription);
        return ;
    }
    
    if (result.count)
    {
        TouchEvent * te = result.lastObject;
        te.date = [NSDate date];
    }
    else
    {
        TouchEvent * te = [NSEntityDescription insertNewObjectForEntityForName:NSStringFromClass([TouchEvent class]) inManagedObjectContext:self.managedObjectcontext];
        te.name = t;
        te.date = [NSDate date];
    }

    
    if (![self.managedObjectcontext save:&error])
    {
        NSLog(@"%@",error.localizedDescription);
        return;
    }
    
}



@end
