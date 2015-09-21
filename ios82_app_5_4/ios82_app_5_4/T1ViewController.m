//
//  T1ViewController.m
//  ios82_app_5_4
//
//  Created by ying xu on 15/9/11.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "T1ViewController.h"

@interface T1ViewController ()<UIImagePickerControllerDelegate>

@property (strong, nonatomic) IBOutlet UIImageView *imageView;

@property(nonatomic,strong)UIImagePickerController * pickerVC;


@end

@implementation T1ViewController

- (IBAction)tapb:(id)sender
{
    [self presentViewController:self.pickerVC animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.pickerVC = [[UIImagePickerController alloc]init];
    self.pickerVC.delegate = self;
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"%@",info);
    
    UIImage * image = info[UIImagePickerControllerOriginalImage];
    
    
    
    self.imageView.image = image;
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
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
