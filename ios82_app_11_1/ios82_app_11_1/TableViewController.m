//
//  TableViewController.m
//  ios82_app_11_1
//
//  Created by ying xu on 15/10/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TableViewController.h"

#import "TableViewCell.h"

#import "ACell.h"
#import "BCell.h"

@interface TableViewController ()<TableViewCellDelegate>

@property(nonatomic,strong)NSArray * itmes;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.itmes  = @[@"A",@"B",@"C"];

}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.itmes.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    
    
    //NULL空指针 nil空对象指针 Nil空的类对象（Cless）
//    [self tt:NULL];
//    [cell isKindOfClass:Nil];
//    [cell isMemberOfClass:Nil];
    
//    [ACell isSubclassOfClass:[UITableViewCell class]];


    
   // [cell isKindOfClass:<#(__unsafe_unretained Class)#>]
    
    
    if ([cell isKindOfClass:[ACell class]])
    {
        ACell * ac = (ACell *)cell;
        ac.tapABlockHandle = ^{};
    }
    
    if ([cell isKindOfClass:[BCell class]])
    {
        BCell * bc = (BCell *)cell;
        bc.tapBBlockHandle = ^{};
    }
    
    
    
    
 
    
//    // Configure the cell...
//    [cell setCellTitle:self.itmes[indexPath.row]];
//    
//    cell.delegate = self;
    
//    cell.tapBlockHandle = ^{
//        NSLog(@"%@ cell被点击了",indexPath);
//    };
    
    return cell;
}

-(void)tt:(void *)p
{
    
    
}

-(void)didTapButtonCell:(TableViewCell *)cell
{
    NSIndexPath * indexPath = [self.tableView indexPathForCell:cell];
    
    NSLog(@"%@",indexPath);
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
