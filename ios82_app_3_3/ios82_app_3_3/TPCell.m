//
//  TPCell.m
//  ios82_app_3_3
//
//  Created by ying xu on 15/9/2.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TPCell.h"
#import "TPNews.h"

#import "UITableViewCell+Funcs.h"

@interface TPCell ()

@property (strong, nonatomic) IBOutlet UIImageView *tpImageView1;

@property (strong, nonatomic) IBOutlet UIImageView *tpImageView2;
@property (strong, nonatomic) IBOutlet UIImageView *tpImageView3;

@end

@implementation TPCell

-(void)setCellInfo:(TPNews *)news
{
    
    [super setCellInfo:news];
    
    self.tpImageView1.image = news.a;
    self.tpImageView2.image = news.b;
    self.tpImageView3.image = news.c;
    
    
}

@end
