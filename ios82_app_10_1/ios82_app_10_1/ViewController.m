//
//  ViewController.m
//  ios82_app_10_1
//
//  Created by ying xu on 15/9/29.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBOutlet UITextField *tf;



@end

@implementation ViewController

- (IBAction)tapSys:(id)sender
{
    self.tf.inputView = nil;
    
    if (self.tf.isFirstResponder)
    {
        [self.tf reloadInputViews];
    }
}
- (IBAction)tapF:(id)sender
{
    UIView* v = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 200)];
    v.backgroundColor = [UIColor redColor];
    
    self.tf.inputView = v;
    
    if (self.tf.isFirstResponder)
    {
        [self.tf reloadInputViews];
    }
    
}

- (IBAction)tapC:(id)sender
{
    if (self.tf.isFirstResponder == YES)
    {
        //注销第一响应者
        [self.tf resignFirstResponder];
        
        [self.view endEditing:YES];
    }
    else
    {
        [self.tf becomeFirstResponder];
    }
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
 
    
    /*
    NSString * str = @"123[兔子]b[太阳]";
    
    NSMutableAttributedString * s1 = [[NSMutableAttributedString alloc]initWithString:str];
    
    s1.string;
    
    //创建匹配正则表达式类型描述模板
    NSString * pattern = @"\\[[a-zA-Z0-9\\u4e00-\\u9fa5]+\\]";
    
    //依据正则表达式创建匹配对象
    NSError * error = nil;
    //CaseInsensitive
    NSRegularExpression * re = [[NSRegularExpression alloc]initWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:&error];
    
    if (re == nil)
    {
        NSLog(@"正则创建失败");
        NSLog(@"%@",error.localizedDescription);
        return;
    }
    
    NSArray * result = [re matchesInString:s1.string options:NSMatchingReportCompletion range:NSMakeRange(0, s1.string.length)];
    
    for (int i = 0; i<result.count; i++)
    {
        NSTextCheckingResult * r = result[i];
        
        NSLog(@"%@",NSStringFromRange(r.range));
        
        NSString * imageStr = [s1.string substringWithRange:r.range];
        NSLog(@"%@",imageStr);
        
    }
    
    
  //  [s1 replaceCharactersInRange:<#(NSRange)#> withAttributedString:<#(NSAttributedString *)#>]
    
    self.label.attributedText = s1;
    */
    /*
    NSString * s = @"123";
    NSMutableString * s1;
    
    NSMutableAttributedString * str = [[NSMutableAttributedString alloc]initWithString:@"12"];
    
    [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:NSMakeRange(0, 1)];
    
    [str addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:10] range:NSMakeRange(1, 1)];
    
    NSTextAttachment * attachment = [[NSTextAttachment alloc]init];
    
    attachment.image = [UIImage imageNamed:@"1"];
    
    NSAttributedString * imageStr = [NSAttributedString attributedStringWithAttachment:attachment];
    
    [str appendAttributedString:imageStr];
    
    self.label.attributedText = str;
    
    
    */
    
    /*
    NSString * path = [[NSBundle mainBundle]pathForResource:@"Test" ofType:@"plist"];
    
    NSArray * arr = [NSArray arrayWithContentsOfFile:path];
    
    NSLog(@"arr = %@",arr);
     */
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
