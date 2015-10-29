//
//  UpdateViewController.m
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
// 修改信息

#import "UpdateViewController.h"
#import "PersonManager.h"
#import "UIViewController+HUD.h"

@interface UpdateViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textName;
@property (strong, nonatomic) IBOutlet UITextField *textAge;
@property (strong, nonatomic) IBOutlet UITextField *textTel;

@property (strong, nonatomic) PersonManager *manager;

@end

@implementation UpdateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"修改信息";
    
    self.manager = [PersonManager share];
    NSLog(@"传过来的%@",self.per);
    self.textName.text = self.per.name;
    self.textAge.text = self.per.age;
    self.textTel.text = self.per.tel;
}

#pragma mark 点击确认修改
- (IBAction)tapBtn:(id)sender
{
    // 拿到界面上输入的值赋值给person对象
    NSString *name = self.textName.text;
    NSString *age = self.textAge.text;
    NSString *tel = self.textTel.text;
    NSDictionary *dic = @{@"person_id":self.per.person_id,@"name":name,@"age":age,@"tel":tel};
    // 创建一个person对象，初始化字典中必须有person_id，即为当前传过来的id
    Person *person = [[Person alloc] initWithDictionary:dic];
    // 执行修改
    if ([self.manager updatePerson:person])
    {
        [self showHint:@"修改成功"];
        [self.navigationController popViewControllerAnimated:YES];
    }
    else
    {
        [self showHint:@"修改失败"];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
