//
//  PKProtocol.h
//  3.4
//
//  Created by 李林涛 on 14/12/11.
//  Copyright (c) 2014年 李林涛. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PKProtocol <NSObject>
@required
- (void)attacked;
@optional
- (void)die;
@end
