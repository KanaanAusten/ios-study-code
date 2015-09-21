//
//  ViewController.m
//  ios82_app_5_4
//
//  Created by ying xu on 15/9/11.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "Pinyin.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UITextField *inputText;

@property (strong, nonatomic) IBOutlet UILabel *displayLabel;

@end

@implementation ViewController

- (IBAction)tapB:(id)sender
{
    NSString * text = self.inputText.text;
    
    NSString * xing = [self ttt:text];
    
    self.displayLabel.text = xing;
}

-(NSString *)ttt:(NSString *)name
{
    unichar a = [name characterAtIndex:0];
    char b = pinyinFirstLetter(a);
    return [NSString stringWithFormat:@"%c",b];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
