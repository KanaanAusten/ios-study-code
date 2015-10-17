//
//  BCell.h
//  ios82_app_11_1
//
//  Created by ying xu on 15/10/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^BCB)(void);

@interface BCell : UITableViewCell


@property(nonatomic,strong)BCB tapBBlockHandle;

@end
