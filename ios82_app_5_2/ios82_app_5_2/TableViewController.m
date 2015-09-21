//
//  TableViewController.m
//  ios82_app_5_2
//
//  Created by ying xu on 15/9/9.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TableViewController.h"

#import "TouchEvnet.h"

@interface TableViewController ()

@property(nonatomic,strong)NSArray * events;


@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

@implementation TableViewController

-(void)loadShuju
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
    
    self.events = result;
    [self.tableView reloadData];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
     UIApplication * app = [UIApplication sharedApplication];
    id delegate = app.delegate;
    self.managedObjectContext = [delegate managedObjectContext];
    
    [self loadShuju];

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.events.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TouchEvnet * t = self.events[indexPath.row];
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.textLabel.text = t.name;
    cell.detailTextLabel.text = t.dateString;
    
    return cell;
}





@end
