//
//  GCell.m
//  ios82_app_3_3
//
//  Created by ying xu on 15/9/2.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "GCell.h"

@implementation GCell

-(void)setCellInfo:(GNews *)news
{
    if (news.isMark == YES)
    {
        self.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    else
    {
        self.accessoryType = UITableViewCellAccessoryNone;
    }

}

@end
