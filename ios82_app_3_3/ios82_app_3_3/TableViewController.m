//
//  TableViewController.m
//  ios82_app_3_3
//
//  Created by ying xu on 15/9/2.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TableViewController.h"

#import "UITableViewCell+Funcs.h"

#import "WZNews.h"
#import "TPNews.h"

#import "GNews.h"
#import "GCell.h"

@interface TableViewController ()

@property(nonatomic,strong)NSArray * items;

@end

@implementation TableViewController

-(void)loadShuju
{
    WZNews * n1 = [[WZNews alloc]init];
    
    n1.title = @"tttt";
    n1.subTitle = @"aaaaa";
    n1.isMark = NO;
    
    WZNews * n2 = [[WZNews alloc]init];
    
    n2.title = @"xxxxxx";
    n2.subTitle = @"bbbbbb";
    n2.isMark = NO;
    
    
    TPNews * n3 = [[TPNews alloc]init];
    n3.a = [UIImage imageNamed:@"1"];
    n3.b = [UIImage imageNamed:@"1"];
    n3.c = [UIImage imageNamed:@"1"];
    n3.isMark = NO;
    
    TPNews * n4 = [[TPNews alloc]init];
    n4.a = [UIImage imageNamed:@"2"];
    n4.b = [UIImage imageNamed:@"2"];
    n4.c = [UIImage imageNamed:@"2"];
    n4.isMark = NO;
    
    
    self.items = @[n1,n2,n3,n4];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadShuju];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    GNews * news = self.items[indexPath.row];
    
    NSString *identifie = [self cellIdentifieWithNews:news];
    
    GCell *cell = [tableView dequeueReusableCellWithIdentifier:identifie forIndexPath:indexPath];
    
    [cell setCellInfo:news];
    
    
    return cell;
}

/**
 *  通过动态方法获取一个对象指针指向的内存类型
 *
 *  @param news 一个动态类型的对象指针
 *
 *  @return 这个指针指向的内存类型名字
 */
-(NSString *)cellIdentifieWithNews:(id)news
{
    Class c = [news class];
    NSString * className = NSStringFromClass(c);
    return className;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    GNews * n = self.items[indexPath.row];
    if (n.isMark == YES)
    {
        n.isMark = NO;
    }
    else
    {
        n.isMark = YES;
    }
    
    [self.tableView reloadData];
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
