//
//  BKButtonB.h
//  DemoSDK
//
//  Created by 徐赢 on 14/12/30.
//  Copyright (c) 2014年 徐赢. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^BBlockType)(void);

@interface BKButtonB : NSObject

@property(nonatomic,strong)BBlockType tapBlockHandle;

@end
