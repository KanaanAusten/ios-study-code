//
//  TouchView.h
//  ios82_app_8_2
//
//  Created by ying xu on 15/9/25.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TVB)(CGPoint point);

@interface TouchView : UIView

@property(nonatomic,strong)TVB touchBegin;

@property(nonatomic,strong)TVB touchMove;
@property(nonatomic,strong)TVB touchEnd;



@end
