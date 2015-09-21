//
//  WZCell.m
//  ios82_app_3_3
//
//  Created by ying xu on 15/9/2.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "WZCell.h"
#import "WZNews.h"

#import "UITableViewCell+Funcs.h"

@interface WZCell ()
@property (strong, nonatomic) IBOutlet UILabel *wzTitleLabel;
@property (strong, nonatomic) IBOutlet UILabel *wzSubTitleLabel;

@end

@implementation WZCell

-(void)setCellInfo:(WZNews *)news
{
    [super setCellInfo:news];
    
    self.wzTitleLabel.text = news.title;
    self.wzSubTitleLabel.text = news.subTitle;
}


@end
