//
//  TrafficManager.h
//  3.2
//
//  Created by 李林涛 on 14/12/11.
//  Copyright (c) 2014年 李林涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrafficProtocol.h"

@interface TrafficManager : NSObject

-(void)addSomeOne:(id<TrafficProtocol>)one;

@end
