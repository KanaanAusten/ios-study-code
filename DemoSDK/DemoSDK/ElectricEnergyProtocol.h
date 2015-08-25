//
//  ElectricEnergyProtocol.h
//  3.3
//
//  Created by 李林涛 on 14/12/11.
//  Copyright (c) 2014年 李林涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ElectricEnergyProtocol <NSObject>
@required
- (void) start;
- (void) stop;
@end
