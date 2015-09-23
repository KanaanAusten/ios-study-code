//
//  DetailViewController.h
//  ios82_app_6_5
//
//  Created by ying xu on 15/9/21.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol DetailViewControllerDelegate;
@interface DetailViewController : UIViewController

@property(nonatomic,strong)NSString * text;

@property(nonatomic,weak)id<DetailViewControllerDelegate>delegate;

@end


@protocol DetailViewControllerDelegate <NSObject>

-(void)didChangeText:(NSString *)text;

@end
