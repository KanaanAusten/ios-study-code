//
//  ViewController.m
//  ios82_app_6_1
//
//  Created by ying xu on 15/9/14.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"
#import "URLs.h"

#import "AFNetworking.h"

#define Token @"自行获取~~~"



@interface ViewController ()

@property(nonatomic,strong)AFHTTPRequestOperationManager * manager;

@end

@implementation ViewController

- (IBAction)tapB1:(id)sender
{
    
    NSDictionary * dic = @{@"access_token":Token,@"count":@"2"};
    
    [self.manager GET:PublicWeibo parameters:dic success:^void(AFHTTPRequestOperation * op, NSDictionary * dic) {
        NSLog(@"%@",dic);
        
    } failure:^void(AFHTTPRequestOperation * op, NSError * error) {
        NSLog(@"%@",error.localizedDescription);
    }];
}



- (IBAction)tapB:(id)sender
{

    NSString * str = [NSString stringWithFormat:@"%@?access_token=%@&count=%d",PublicWeibo,Token,2];
    
    NSURL * url = [NSURL URLWithString:str];
    
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    
    //连接
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
        NSString * str = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",str);
        
        NSError * error;
        NSDictionary * dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
        if (dic == nil)
        {
            NSLog(@"%@",error.localizedDescription);
            return ;
        }
        
        NSLog(@"dic = %@",dic);
        
  
        
    }];
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.manager = [[AFHTTPRequestOperationManager alloc]init];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
