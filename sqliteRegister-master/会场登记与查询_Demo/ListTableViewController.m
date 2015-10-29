//
//  ListTableViewController.m
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
// 显示所有人员列表

#import "ListTableViewController.h"
#import "PersonManager.h"
#import "UIViewController+HUD.h"

@interface ListTableViewController ()

@property (strong, nonatomic) PersonManager *manager;

@property (strong, nonatomic) NSMutableArray *items;

@end

@implementation ListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"所有人员列表";
    
    self.manager = [PersonManager share];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    // 获取数据源
    self.items = [NSMutableArray arrayWithArray:[self.manager searchAllPerson]];
    [self.tableView reloadData];
}


#pragma mark 点击返回
- (IBAction)tapBtn:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellID" forIndexPath:indexPath];
    
    // Configure the cell...
    Person *person = self.items[indexPath.row];
    cell.textLabel.text = [NSString stringWithFormat:@"姓名：%@",person.name];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"年龄：%@   电话：%@",person.age,person.tel];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        
        // 从数据源中移除数据
        [self.items removeObjectAtIndex:indexPath.row];
        
        // 删除数据库中对应的数据
        Person *person = self.items[indexPath.row];
        NSLog(@"要删除行的person_id = %@",person.person_id);
        if ([self.manager deletePersonWithPersonID:person.person_id])
        {
            [self showHint:@"删除成功"];
        }
        else
        {
            [self  showHint:@"删除失败"];
        }
        
//        Person *person = self.items[indexPath.row];
//        NSLog(@"要删除行的person_id = %@",person.person_id);
//        if ([self.manager deletePersonWithPersonID:person.person_id])
//        {
//            NSMutableArray *mArr = [NSMutableArray arrayWithArray:self.items];
//            [mArr removeObject:person];
//            
//            self.items = mArr;
//            [self.tableView reloadData];
//            [self showHint:@"删除成功"];
//        }
//        else
//        {
//            [self showHint:@"删除失败"];
//        }
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Person *person = self.items[indexPath.row];
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"Update"];
    // KVC或者属性传值
    [vc setValue:person forKey:@"per"];
    [self.navigationController pushViewController:vc animated:YES];
}

//修改删除按钮标题
-(NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return @"删除";
}


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


#pragma mark - Navigation

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    //获取到当前点击的cell
    UITableViewCell *cell = (UITableViewCell *)sender;
    //通过cell拿到indexPath
    NSIndexPath *indexPath = [self.tableView indexPathForCell:cell];
    //通过indexPath从数据源中取得对应数据
    Person *person = self.items[indexPath.row];
    //通过segue.destinationViewController拿到要推到的页面
    UIViewController *vc = segue.destinationViewController;
    //传值
    [vc setValue:person forKey:@"person"];
}
*/

@end
