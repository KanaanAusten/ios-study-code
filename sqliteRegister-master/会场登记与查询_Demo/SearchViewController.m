//
//  SearchViewController.m
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
// 查询

#import "SearchViewController.h"
#import "PersonManager.h"
#import "UIViewController+HUD.h"
#import "SearchDetailTableViewController.h"

@interface SearchViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textName;
@property (strong, nonatomic) IBOutlet UITextField *textAge;
@property (strong, nonatomic) IBOutlet UITextField *textTel;

@property (strong, nonatomic) PersonManager *manager;
@property (strong, nonatomic) SearchDetailTableViewController *dVC;

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.manager = [PersonManager share];
}

#pragma mark 点击查询按钮
- (IBAction)tapSearchBtn:(id)sender
{
    if([self.textName.text isEqualToString:@""] && [self.textTel.text isEqualToString:@""] && [self.textAge.text isEqualToString:@""]){
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"失败" message:@"请输入要查询的条件！" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:ok];
        [self presentViewController:alertController animated:YES completion:nil];
    }
    else
    {
        NSString *name = [self judgeTextfeild:self.textName.text];
        NSString *age = [self judgeTextfeild:self.textAge.text];
        NSString *tel = [self judgeTextfeild:self.textTel.text];
        Person *person = [[Person alloc] init];
        person.name = name;
        person.age = age;
        person.tel = tel;
        NSLog(@"%@",person);
        NSArray *result = [self.manager searchPersonInfo:person];
        NSLog(@"查询结果result = %@",result);
        if (result.count == 0)
        {
            [self showHint:@"查无此人"];
        }
        else
        {
//            Person *p = result[0];
//            self.textName.text = p.name;
//            self.textTel.text = p.tel;
//            self.textAge.text = p.age;
            
            self.dVC = [self.storyboard instantiateViewControllerWithIdentifier:@"SearchDetail"];
            // 属性传值
            self.dVC.result = result;
            [self.navigationController pushViewController:self.dVC animated:YES];
        }
    }
}

#pragma mark 点击跳转显示所有列表
- (IBAction)tapAllPerson:(id)sender
{
    UIViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"nav3"];
    [self presentViewController:vc animated:YES completion:nil];
}

// 判断textfeild.text是否为nil
- (NSString *)judgeTextfeild:(NSString *)text
{
    if ([text isEqualToString:@""])
    {
        return nil;
    }
    return text;
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
