//
//  PKManager.h
//  3.4
//
//  Created by 李林涛 on 14/12/11.
//  Copyright (c) 2014年 李林涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PKProtocol.h"

@interface PKManager : NSObject

@property (strong, nonatomic) id<PKProtocol> perA;
@property (strong, nonatomic) id<PKProtocol> perB;

@end
