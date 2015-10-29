//
//  ViewController.m
//  会场登记与查询_Demo
//
//  Created by Roberts on 15/10/14.
//  Copyright © 2015年 iBokan Wisdom. All rights reserved.
// 登记

#import "RegisterViewController.h"
#import "PersonManager.h"
#import "UIViewController+HUD.h"

@interface RegisterViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet UITextField *textName;
@property (strong, nonatomic) IBOutlet UITextField *textAge;
@property (strong, nonatomic) IBOutlet UITextField *textTel;

@property (strong, nonatomic) PersonManager *manager;

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.manager = [PersonManager share];
    
}

#pragma mark 点击添加方法
- (IBAction)tapAddBtn:(id)sender
{
    if ([self.textName.text isEqualToString:@""] || [self.textAge.text isEqualToString:@""] || [self.textTel.text isEqualToString:@""])
    {
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"失败" message:@"信息不完整，添加失败！" preferredStyle: UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:ok];
        [self presentViewController:alertController animated:YES completion:nil];
    }
    else
    {
        NSString *name = self.textName.text;
        NSString *age = self.textAge.text;
        NSString *tel = self.textTel.text;
        NSDictionary *dic = @{@"name":name,@"age":age,@"tel":tel};
        
        // 创建一个person对象，并将VC上的值赋值给新建的对象
        Person *person = [[Person alloc] initWithDictionary:dic];
        // 根据创建的对象进行数据库添加
        if ([self.manager addPerson:person])
        {
            [self showHint:@"添加成功"];
            // 将所有textfeild置空
            self.textTel.text = nil;
            self.textName.text = nil;
            self.textAge.text = nil;
        }
        else
        {
            [self showHint:@"添加失败"];
        }
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
