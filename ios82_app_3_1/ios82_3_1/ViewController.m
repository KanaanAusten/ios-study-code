//
//  ViewController.m
//  ios82_3_1
//
//  Created by ying xu on 15/8/31.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate,UIPickerViewDataSource,UIPickerViewDelegate>

@property (strong, nonatomic) IBOutlet UIPickerView *pickerView;

@property (nonatomic,strong)NSArray * items;

@property (nonatomic,strong)NSDictionary * dic;


@end

@implementation ViewController

-(void)loadShuju
{
    NSArray * arr1 = @[@"A",@"B",@"C",@"D"];
    NSArray * arr2 = @[@"1",@"2",@"3"];
    NSArray * arr3 = @[@"x",@"y"];
    
    self.items = @[arr1,arr2,arr3];
    
    self.dic = @{@"1":arr1,@"2":arr2,@"3":arr3};
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   // UIView * v;
    //v.userInteractionEnabled;
    
    [self loadShuju];
    
    self.pickerView.delegate=self;
    self.pickerView.dataSource = self;
}
/*
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    
    return self.items.count;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray * arr = self.items[component];
    return arr.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSArray * arr = self.items[component];
    NSString * title = arr[row];
    
    return title;
    
}
*/

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return self.dic.count;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSString * index = [NSString stringWithFormat:@"%ld",(long)component+1];
    NSArray * arr = self.dic[index];
    return arr.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString * index = [NSString stringWithFormat:@"%ld",(long)component+1];
    NSArray * arr = self.dic[index];
    
    NSString * title = arr[row];
    return title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
