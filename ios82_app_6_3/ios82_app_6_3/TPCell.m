//
//  TPCell.m
//  ios82_app_6_3
//
//  Created by ying xu on 15/9/16.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TPCell.h"

#import "TPWeibo.h"

#import "UITableViewCell+Func.h"

#import "UIImageView+AFNetworking.h"

@interface TPCell ()

@property (strong, nonatomic) IBOutlet UIImageView *userImageView;
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;

@property (strong, nonatomic) IBOutlet UILabel *weiboContentLabel;

@property (strong, nonatomic) IBOutlet UIImageView *weiboImageView;


@end

@implementation TPCell

-(void)setCellInfo:(TPWeibo *)weiboObj
{
    self.userNameLabel.text = weiboObj.name;
    self.weiboContentLabel.text = weiboObj.text;
    
    [self.userImageView setImageWithURL:weiboObj.userImageURL placeholderImage:[UIImage imageNamed:@"1"]];
    
    [self.weiboImageView setImageWithURL:weiboObj.thumbnail_pic_url placeholderImage:[UIImage imageNamed:@"1"]];
    
    
    
}


@end
