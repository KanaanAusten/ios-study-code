//
//  SlideViewController.h
//  侧滑0922
//
//  Created by mac on 15/9/22.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SlideViewControllerDelegate <NSObject>

@optional

-(BOOL)SlideViewControllerCanLeft;


@end


@interface SlideViewController : UINavigationController

+(instancetype)share;

@property (nonatomic,strong)UIViewController * leftMenu;



-(void)switchToViewController:(UIViewController *)viewController withCompletion:(void(^)())completion;

@end
