//
//  DiCengViewController.m
//  侧滑0922
//
//  Created by mac on 15/9/22.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "DiCengViewController.h"
#import "SlideViewController.h"
@interface DiCengViewController ()

@end

@implementation DiCengViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    switch (indexPath.row) {
        case 0:
            cell.textLabel.text = @"我";
            break;
        case 1:
             cell.textLabel.text = @"主页";
            break;
        case 2:
            cell.textLabel.text = @"关于我们";
            break;
        case 3:
            cell.textLabel.text = @"退出";
            break;
            
        default:
            break;
    }
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
        {
            UIViewController * vc =[self.storyboard instantiateViewControllerWithIdentifier:@"red"];
//            [[SlideViewController share]switchToViewController:vc withCompletion:nil];
            [[SlideViewController share]pushViewController:vc animated:YES];
        }
            break;
        case 1:
        {
            UIViewController * vc =[self.storyboard instantiateViewControllerWithIdentifier:@"yellow"];
//            [[SlideViewController share]switchToViewController:vc withCompletion:^{
//                
//                NSLog(@"退出黄色页面成功");
//            }];
              [[SlideViewController share]pushViewController:vc animated:YES];
           
        }
            
            break;
        case 2:
        {
            UIViewController * vc =[self.storyboard instantiateViewControllerWithIdentifier:@"blue"];
//            [[SlideViewController share]switchToViewController:vc withCompletion:nil];
            [[SlideViewController share]pushViewController:vc animated:YES];
        }
            
            break;
        case 3:
        {
            NSUserDefaults * user =[NSUserDefaults standardUserDefaults];
            [user removeObjectForKey:@"uid"];
            [user synchronize];
            
            
            [[SlideViewController share]popToRootViewControllerAnimated:YES];
        }
            break;
            
        default:
            break;
    }
    
    
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
