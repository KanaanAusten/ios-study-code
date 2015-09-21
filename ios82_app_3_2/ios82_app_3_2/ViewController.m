//
//  ViewController.m
//  ios82_app_3_2
//
//  Created by ying xu on 15/9/1.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "BKNews.h"

#import "BKNewsCell.h"


@class BKJiuyeNewsCell;
@class BkJiuyeNews;

@interface ViewController ()<UITableViewDataSource>

@property(nonatomic,strong)NSArray * items;

@property(nonatomic,strong)UITableView * tableView;

@end

@implementation ViewController

-(void)loadShuju
{
    BKNews * n1 = [[BKNews alloc]init];
    n1.title = @"徐老师开讲";
    n1.subTitle = @"学生非常喜欢！！！";
    n1.image = [UIImage imageNamed:@"1"];
    
    BKNews * n2 = [[BKNews alloc]init];
    n2.title = @"学习工具介绍";
    n2.subTitle = @"综合开发编辑器SubLime";
    n2.image = [UIImage imageNamed:@"2"];
    
    BKNews * n3 = [[BKNews alloc]init];
    n3.title = @"ttttt";
    n3.subTitle = @"xxxxxx";
    
    
    
    self.items = @[n1,n2,n3];
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self loadShuju];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
    //想tableView注册重用cell
    //通过某一个字符串，可以拿到对应类的对象
    [self.tableView registerClass:[BKNewsCell class] forCellReuseIdentifier:@"BKNews"];
 
    
//    [self.tableView registerClass:[BKJiuyeNewsCell class] forCellReuseIdentifier:@"BKJiuyeNews"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //1，通过indexPath获取该行需要显示的数据
    BKNews * n = self.items[indexPath.row];
    //2，通过数据获取相应的Cell对象
    BKNewsCell * cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass([n class]) forIndexPath:indexPath];
    
    //3,将数据，传递到cell对象中
    [cell setCellInfo:n];
    
    //4，返回cell对象
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
