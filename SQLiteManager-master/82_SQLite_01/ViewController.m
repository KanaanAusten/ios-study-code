//
//  ViewController.m
//  82_SQLite_01
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
//

#import "ViewController.h"
#import "SQLiteManager.h"

@interface ViewController ()

@property (strong, nonatomic) SQLiteManager *sqlManager;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.sqlManager = [SQLiteManager share];
}

#pragma mark 添加
- (IBAction)tapAddBtn:(id)sender
{
    NSString *sql = @"insert into person(name,age,tel) values('mark','18','119')";
    if ([self.sqlManager run:sql])
    {
        NSLog(@"添加成功 ");
    }
    else
    {
        NSLog(@"添加失败");
    }
}


#pragma mark 查找
- (IBAction)tapSearchBtn:(id)sender
{
    NSString *sql = @"select * from person where name = 'mark'";
    
    NSArray *result = [self.sqlManager getData:sql];
    NSLog(@"查询结果result ＝ %@",result);
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
