//
//  BKButtonD.h
//  DemoSDK
//
//  Created by 徐赢 on 14/12/29.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol BKButtonDelegate;

@interface BKButtonD : NSObject

@property(nonatomic,weak)id<BKButtonDelegate>delegate;

@end


@protocol BKButtonDelegate <NSObject>

-(void)didTapButton:(BKButtonD *)button;

@end