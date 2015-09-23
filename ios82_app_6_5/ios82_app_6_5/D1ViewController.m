//
//  D1ViewController.m
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "D1ViewController.h"

#import "CountManager.h"

@interface D1ViewController ()

@property (strong, nonatomic) IBOutlet UILabel *label;

@property(nonatomic,strong)CountManager * countM;

@end

@implementation D1ViewController

- (IBAction)tapB:(id)sender
{
    [self.navigationController pushViewController:[self.storyboard instantiateViewControllerWithIdentifier:@"D2ViewController"] animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.countM = [CountManager share];
    
    self.label.text = self.countM.count;
    
    [self.countM requsetCountWithBlockHandle:^(NSString *count) {
        self.label.text = count;
    }];
    
    /*
    NSNotificationCenter * center = [NSNotificationCenter defaultCenter];
    
    [center addObserverForName:CountManagerChangeValueNotification object:nil queue:nil usingBlock:^(NSNotification *note) {
        NSDictionary * dic = note.userInfo;
        
        self.label.text = dic[@"count"];
        
    }];
    */
   // [self.countM addObserver:self forKeyPath:@"count" options:NSKeyValueObservingOptionNew context:nil];
}

/*
-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
   // NSLog(@"%@",change);
    
    NSString * count = change[@"new"];
    self.label.text = count;
}
 */

-(void)viewWillAppear:(BOOL)animated
{
    self.label.text = self.countM.count;
}

-(void)viewDidAppear:(BOOL)animated
{
    
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
