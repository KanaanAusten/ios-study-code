//
//  TableViewCell.m
//  ios82_app_11_1
//
//  Created by ying xu on 15/10/8.
//  Copyright (c) 2015年 博看文思. All rights reserved.
//

#import "TableViewCell.h"

@interface TableViewCell ()

@property (strong, nonatomic) IBOutlet UIButton *button;


@end

@implementation TableViewCell

- (IBAction)tapB:(id)sender
{
    if (self.tapBlockHandle)
    {
        self.tapBlockHandle();
    }
    
    if ([self.delegate respondsToSelector:@selector(didTapButtonCell:)])
    {
        [self.delegate didTapButtonCell:self];
    }
}

-(void)setCellTitle:(NSString *)title
{
    [self.button setTitle:title forState:UIControlStateNormal];
}

@end
