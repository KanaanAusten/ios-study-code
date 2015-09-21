//
//  T1ViewController.m
//  ios82_app_6_2
//
//  Created by ying xu on 15/9/15.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T1ViewController.h"

#import "AFNetworking.h"

@interface T1ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *aTF;
@property (strong, nonatomic) IBOutlet UITextField *bTF;

@property (strong, nonatomic) IBOutlet UILabel *label;


@property(nonatomic,strong)AFHTTPRequestOperationManager * afManager;

@end

@implementation T1ViewController

- (IBAction)tapB:(id)sender
{
    //请求前，构造请求参数
    
    
    __weak __block T1ViewController * copy_self = self;

    NSDictionary * dic = @{@"a":self.aTF.text,@"b":self.bTF.text};
    
    
    [self.afManager GET:@"http://3.xuyingtest.sinaapp.com/ios82t1.php" parameters:dic success:^void(AFHTTPRequestOperation * op, NSData * data){
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
       // NSLog(@"%@",dic);
        
        //请求后，如何显示
        
        NSString * sum = dic[@"sum"];
     
        copy_self.label.text = sum;
        
    } failure:^void(AFHTTPRequestOperation * op, NSError * error) {
        ;
    }];
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.afManager = [[AFHTTPRequestOperationManager alloc]init];
    self.afManager.responseSerializer = [AFHTTPResponseSerializer serializer];
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
