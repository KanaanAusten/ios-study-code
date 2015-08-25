//
//  BKButton.h
//  DemoSDK
//
//  Created by 徐赢 on 14-9-17.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef void(^BBlockType)(void);


@interface BKButton : NSObject



-(void)addTapTarget:(id)target Action:(SEL)action;


@end
