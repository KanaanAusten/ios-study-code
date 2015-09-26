//
//  ViewController.m
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "ViewController.h"

#import "TouchView.h"
#import "RenderView.h"
#import "LineManager.h"


@interface ViewController ()


@property (strong, nonatomic) IBOutlet RenderView *renderView;

@property (strong, nonatomic) IBOutlet TouchView *touchView;

@property(nonatomic,strong)LineManager * lineManager;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.lineManager = [LineManager share];
    
    __weak __block ViewController * copy_self = self;
    
    self.lineManager.didChangeLinesBlockHandle = ^(NSArray * lines){
        [copy_self.renderView setLines:lines];
    };
    
    self.touchView.touchBegin = ^(CGPoint point){
        [copy_self.lineManager addLineWithStartPoint:point Color:[UIColor redColor] Width:1];
    };
    
    self.touchView.touchMove = ^(CGPoint point){
        [copy_self.lineManager addPointAtLastLine:point];
    };
    
    self.touchView.touchEnd =^(CGPoint point){
        [copy_self.lineManager addPointAtLastLine:point];
    };
    
    

    
//    Line * l = [[Line alloc]init];
//    l.color = [UIColor redColor];
//    l.width = 1;
//    [l addPoint:CGPointMake(10, 10)];
//    [l addPoint:CGPointMake(20, 20)];
//    
//    
//    [self.renderView setLines:@[l]];
    
    
}



@end
