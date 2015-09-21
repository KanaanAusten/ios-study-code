//
//  BKNewsCell.m
//  ios82_app_3_2
//
//  Created by ying xu on 15/9/1.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "BKNewsCell.h"

@interface BKNewsCell ()

@property(nonatomic,strong)UILabel * bkTitleLable;
@property(nonatomic,strong)UILabel * bkSubTitleLable;
@property(nonatomic,strong)UIImageView * bkImageView;


@end

@implementation BKNewsCell

- (void)awakeFromNib
{
    // Initialization code
    [self otherInit];
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        [self otherInit];
    }
    
    return self;
}

-(void)otherInit
{
    //对cell的模板初始化
    
    self.bkImageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, 2, 40, 40)];
    [self.contentView addSubview:self.bkImageView];
    
    self.bkTitleLable = [[UILabel alloc]initWithFrame:CGRectMake(60, 2, 240, 20)];
    [self.contentView addSubview:self.bkTitleLable];
    
    self.bkSubTitleLable = [[UILabel alloc]initWithFrame:CGRectMake(60, 24, 240, 18)];
    [self.contentView addSubview:self.bkSubTitleLable];
    
}

-(void)setCellInfo:(BKNews *)news
{
    self.bkImageView.image = news.image;
    self.bkTitleLable.text = news.title;
    self.bkSubTitleLable.text = news.subTitle;
}


@end
