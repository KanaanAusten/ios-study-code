//
//  TableViewCell.h
//  ios82_app_11_1
//
//  Created by ying xu on 15/10/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TVCB)(void);


@protocol TableViewCellDelegate;

@interface TableViewCell : UITableViewCell


@property(nonatomic,weak)id<TableViewCellDelegate>delegate;

@property(nonatomic,strong)TVCB tapBlockHandle;


-(void)setCellTitle:(NSString *)title;


@end


@protocol TableViewCellDelegate <NSObject>

@optional

-(void)didTapButtonCell:(TableViewCell *)cell;

@end
